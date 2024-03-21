//
//  Persistence.swift
//
//
//  Created by Gabriela Bezerra on 13/03/24.
//

import Foundation

/// Esse aquivo tem funções úteis para fazer persistencia de dados em dois formatos: json e texto puro.
/// # JSON
///  ```javascript
/// {
///     "key1": "value",
///     "key2": "value2",
///     "key3": "value3",
/// }
/// ```
/// Para representar o JSON de exemplo como Dado, crie um modelo (tipo customizado) da seguinte maneira:
/// ```swift
/// struct Content: Codable { // substitua Content pelo nome do tipo do seu dado
///     // substitua cada variável pelas chaves do seu json, e respectivo tipo
///     let key1: String
///     let key2: String
///     let key3: String
/// }
/// ```
/// # Texto Puro (Plain Text)
/// ```
/// value1
/// value2
/// value3
/// ```
/// Para representar dados em arquivos de texto puro, use array de string `[String]`
struct Persistence {
    
    /// Variável que deve ser configurada com o nome do seu projeto para criar o diretório padrão ~/.nomedoprojeto/
    /// ## Exemplo:
    /// ```swift
    /// Persistence.projectName = "myproject"
    /// // o valor final será "myproject"
    /// ```
    /// Caso o nome do seu projeto tenha mais de uma palavra e letras maiúsculas e minúsculas, ele sempre será tratado para que fique no seguinte formato:
    /// ```swift
    /// Persistence.projectName = "My Project"
    /// // o valor final será "my-project"
    /// ```
    static var projectName: String {
        get {
            _projectName
        }
        set {
            _projectName = newValue
                .replacingOccurrences(of: " ", with: "-")
                .lowercased()
        }
    }
    private static var _projectName: String = ""
    
    // MARK: JSON
    /// Persiste dados como json no diretorio ~/.nomedoprojeto/path
    /// - Parameters:
    ///   - model: Dado a ser persistido. Esse dado tem que estar conforme o protocolo Encodable.
    ///   - path: Caminho onde o dado será persistido em um arquivo json
    /// - Returns: Dado que foi persistido.
    /// ## Exemplo
    /// ```swift
    /// Persistence.projectName = "myproject"
    /// let content = Content()
    /// try Persistence.saveJson(content, file: "folder/content.json")
    /// // salvo em ~/.myproject/folder/content.json
    /// ```
    @discardableResult
    static func saveJson<T: Encodable>(_ model: T, file path: String) throws -> T {
        let url = try buildURL(appending: path)
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try encoder.encode(model)
        try data.write(to: url)
        return model
    }
    
    /// Lê dados de um json no diretorio ~/.nomedoprojeto/path
    /// - Parameters:
    ///   - path: Caminho onde o dado está persistido em um arquivo json
    /// - Returns: Dado que está contido no arquivo json.
    /// ## Exemplo
    /// ```swift
    /// Persistence.projectName = "myproject"
    /// let content = try Persistence.readJson(file: "folder/content.json")
    /// // ler dado em ~/.myproject/folder/content.json
    /// ```
    static func readJson<T: Decodable>(file path: String) throws -> T {
        let url = try buildURL(appending: path)
        let data = try Data(contentsOf: url)
        let model = try JSONDecoder().decode(T.self, from: data)
        return model
    }
    
    // MARK: Plain Text
    /// Salva dados em um arquivo de texto puro no diretório ~/.nomedoprojeto/path
    /// - Parameters:
    ///   - content: Array de dados textuais que será salvo no arquivo de texto puro.
    ///   - path: Caminho onde os dados serão persistidos em um arquivo de texto puro
    ///   - separator: Caractere que define um limite entre um dado e outro.
    /// ## Exemplo
    /// ```swift
    /// Persistence.projectName = "myproject"
    /// let array: [String] = ["data1", "data2", "data3"]
    /// try Persistence.savePlainText(content: array, file: "folder/content.txt")
    /// // salva dados (um em cada linha) no arquivo em ~/.myproject/folder/content.txt
    /// ```
    static func savePlainText(content: [String], path: String, separator: String = "\n") throws {
        let url = try buildURL(appending: path)
        if let data = content
            .joined(separator: separator)
            .data(using: .utf8) {
            try data.write(to: url)
        }
    }

    /// Lê dados de um arquivo de texto puro no diretório ~/.nomedoprojeto/path
    /// - Parameters:
    ///   - path: Caminho onde os dados estão persistidos em um arquivo de texto puro
    ///   - separator: Caractere que define um limite entre um dado e outro.
    /// - Returns: Um array de String com os dados que estão contidos no arquivo de text puro.
    /// ## Exemplo
    /// ```swift
    /// Persistence.projectName = "myproject"
    /// let content: [String] = try Persistence.readPlainText(file: "folder/content.txt")
    /// // ler dados em ~/.myproject/folder/content.txt
    /// ```
    static func readPlainText(path: String, separator: String = "\n") throws -> [String] {
        let url = try buildURL(appending: path)
        let data = try Data(contentsOf: url)
        let string = String(bytes: data, encoding: .utf8)
        var components = string?.components(separatedBy: separator) ?? []
        if components.last?.isEmpty ?? false { components.removeLast() }
        return components
    }
    
    // MARK: Utils
    
    /// Retorna uma lista de string representando o conteúdo de um diretório (pasta)
    /// - Parameter path: Caminho para a pasta que será lida
    /// - Returns: Lista de nomes dos conteúdos dessa pasta
    /// ## Exemplo
    /// ```swift
    /// Persistence.projectName = "myproject"
    /// let content: [String] = try Persistence.listContents(file: "folder")
    /// // lê arquivos em ~/.myproject/folder e printa:
    /// // ~/.myproject/folder
    /// // contents.json
    /// // contents.txt
    /// ```
    static func listContents(folder path: String) throws -> [String] {
        let url = try buildURL(appending: path)
        let contents = try FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: [])
        return contents.map { $0.lastPathComponent }
    }
    
    private static func buildURL(appending path: String) throws -> URL {
        assert(!_projectName.isEmpty, "Persistence.projectName vazio. Você lembrou de configurá-lo em algum lugar?")
        let home = FileManager.default.homeDirectoryForCurrentUser
        let projectFolder = home.appending(path: ".\(_projectName)")
        if !FileManager.default.fileExists(atPath: projectFolder.relativePath) {
            try FileManager.default.createDirectory(at: projectFolder, withIntermediateDirectories: true)
        }
        var components = path.components(separatedBy: "/")
        components.removeLast() // removing file from path components
        try components.indices.forEach { index in
            var folderURL = projectFolder.appending(path: components[0])
            if index != 0 {
                folderURL.append(path: Array(1...index).map { "/\(components[$0])" }.joined())
            }
            if !FileManager.default.fileExists(atPath: folderURL.relativePath) {
                try FileManager.default.createDirectory(at: folderURL, withIntermediateDirectories: false)
            }
        }
        return projectFolder.appending(path: path)
    }
    
}
