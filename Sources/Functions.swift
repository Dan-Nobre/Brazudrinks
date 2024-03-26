//
//  File.swift
//  
//
//  Created by User on 21/03/24.
//

//Função avaliar
func avaliar(drinkToRate: Drink, rate: String) {
    
    Persistence.projectName = "brazudrink"
    
    // ler os drinks
    // o Guard Let tenta ler o arquivo json, se ele n consegue ler ele nao executa mais e se ele ler ele deixa voce usar o "drink" no resto do escopo :D
    guard var drinks: [Drink] = try? Persistence.readJson(file: "drinks.json") else {
        print("Erro tentando ler drink")
        return
    }
    
    // alterar a avaliacao do drink
    // ["a", "b", "c"]
    //   0    1    2    indices
    for index in drinks.indices {
        if drinks[index].nome == drinkToRate.nome {
            // validar se rate foi digitado dentro dos valores corretos (usar enum)
            // ou substituir por estrelinhas a partir do rate "⭐️"
            // ou o que quiser
            drinks[index].avaliacao = rate
        }
    }
    
    // salvar os drinks
    do {
        try Persistence.saveJson(drinks, file: "drinks.json")
    } catch {
        print("Erro tentando salvar drink:", error)
    }
    
}

//Função de pesquisar drinks
func searchDrink(drinkName: DrinkName) -> Drink {
    
    Persistence.projectName = "brazudrink"
    
    let drinks: [Drink] = (try? Persistence.readJson(file: "drinks.json")) ?? []
    
    let drink: Drink
    // criar cases
    switch drinkName {
    case .caipirinha:
        drink = drinks[0]
    case .cajuina:
        drink = drinks[1]
    case .quentao:
        drink = drinks[2]
    case .batidadecoco:
        drink = drinks[3]
    case .licordejenipapo:
        drink = drinks[4]
    case .licordepequi:
        drink = drinks[5]
    case .batidadecupuacu:
        drink = drinks[6]
    case .catuaba:
        drink = drinks[7]
    case .alua:
        drink = drinks[8]
    case .chimarrao:
        drink = drinks[9]
    case .guaranaantartica:
        drink = drinks[10]
    case .mategelado:
        drink = drinks[11]
    case .caldodecana:
        drink = drinks[12]
    }
    
    printColoredText(text: """
    The drink's name is \(drink.nome)
    
    Get to know a few about \(drinkName):
    
    \(drink.descricao)
    
    Region where you can find \(drink.nome): \(drink.regiao)
    
    """, color: "white")
    
    return drink
}

//Função de print ASCII
func drinkPrint() {
    printColoredText(text: """
    ⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⠶⠶⠛⢛⡛⠛⠛⠛⠛⠛⠛⠳⣶⣿⣿⢹⣻⢹⢯⡟⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠛⠉⠀⠀⣀⡴⠚⠋⢹⢦⡀⠀⢀⣤⠤⣾⣻⣬⡳⢌⢛⣸⡟⡝⣻⡝⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠛⢶⣄⣤⣞⠡⠄⠖⣒⡾⠙⠻⢻⢿⣁⢼⡧⡔⢫⢙⣻⣿⢿⣯⠈⣀⣻⣹⣿⡄⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⡟⠋⠙⣟⣿⢾⣶⠿⠶⠿⢶⠶⠾⠾⢿⣷⢿⠛⢋⠉⣿⣾⡗⠦⣄⢀⡿⣿⡇⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡟⢧⣠⢤⣤⣬⣻⣏⠐⠂⡇⠂⡜⠐⢠⡞⠀⣳⣌⠍⣡⣿⣿⢑⣌⠳⣭⣳⣿⠁⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⡾⣏⠉⠗⠺⠿⣿⣿⣶⣶⣾⣤⣤⡿⡿⠿⠿⠗⠋⠁⣼⣿⣤⡎⢗⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡿⣌⠳⣯⣴⣱⣤⡿⢀⢀⣠⣤⣤⣤⣁⠀⠒⠠⠁⠀⣿⡟⠲⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢷⠈⠙⡻⢿⣻⣯⠶⢛⣭⠩⠰⣂⠤⢋⡿⢶⠖⠒⣻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣼⡇⡀⠀⠄⣿⣦⠘⣔⡠⡌⣑⠢⣑⡧⢤⣿⠀⠠⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡿⡇⢣⠀⠈⠻⣿⣮⣴⣡⣘⢤⣋⣴⣿⣫⡏⠀⠸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⣷⠈⣷⢶⢧⣿⡿⢿⣿⣿⣿⣿⣿⣿⣏⠰⡀⢸⢿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡰⠸⣇⠳⣿⢿⣆⠐⠉⠌⣠⢾⠻⣷⣵⣴⢼⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣩⢴⢃⡝⣿⣾⡿⢀⣀⡼⢃⣾⠱⠰⣼⠃⣼⣿⣿⣀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡆⢸⣿⢼⣨⣧⣿⣿⣿⣃⣻⣏⠉⠓⣾⣬⠟⣁⡴⢣⣿⣿⣿⡷⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠟⠻⣅⣺⣿⣿⣿⣿⣿⣿⣯⣥⣮⣿⣻⣿⣿⢖⣛⣭⣬⣿⣿⣿⡽⣿⣻⣽⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠐⠶⠀⠈⢿⣿⣿⡯⢽⣿⡿⣿⣿⠿⠿⣿⠿⠛⢻⣿⠟⠋⢉⢠⣿⡿⣯⣟⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠖⠀⠀⠙⢿⣿⣿⣧⣿⣿⣀⠒⠻⢤⣀⢹⣯⣵⣦⣼⣿⣻⣽⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠳⠷⠾⠻⠟⠛⠛⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    """, color: "green")
}
//Mudar cor no terminal
func printColoredText(text: String, color: String) {
    
    let colors = [
        "reset": "\u{001B}[0m",
        "black": "\u{001B}[30m",
        "red": "\u{001B}[31m",
        "green": "\u{001B}[32m",
        "yellow": "\u{001B}[33m",
        "blue": "\u{001B}[34m",
        "magenta": "\u{001B}[35m",
        "cyan": "\u{001B}[36m",
        "white": "\u{001B}[37m"
    ]
    
    if let chosenColor = colors[color] {
        print("\(chosenColor)\(text)\(colors["reset"]!)")
    } else {
        print(text) // Se a cor não for válida, apenas imprima o texto normalmente
    }
}
//Função LOADING
func loading() {
    printColoredText(text: """
    ,M' dP `7MMF'  `7MMF'                                     `7MMF'  `7MMF'
    dP .M'   MM      MM                                         MM      MM
 mmmMmmMmm   MM      MM   ,6"Yb. `7MMpdMAo.`7MMpdMAo.`7M'   `MF'MM      MM  ,pW"Wq.`7MM  `7MM  `7Mb,od8
   MP dP     MMmmmmmmMM  8)   MM   MM   `Wb  MM   `Wb  VA   ,V  MMmmmmmmMM 6W'   `Wb MM    MM    MM' "'
mmdMmmMmmm   MM      MM   ,pm9MM   MM    M8  MM    M8   VA ,V   MM      MM 8M     M8 MM    MM    MM
 ,M' dP      MM      MM  8M   MM   MM   ,AP  MM   ,AP    VVV    MM      MM YA.   ,A9 MM    MM    MM
 dP ,M'    .JMML.  .JMML.`Moo9^Yo. MMbmmd'   MMbmmd'     ,V   .JMML.  .JMML.`Ybmd9'  `Mbod"YML..JMML.
                                   MM        MM         ,V
                                 .JMML.    .JMML.    OOb"


                
Its HAPPY HOUR and its time for to get a

"""
                     , color: "yellow")
    
}
