//
//  File.swift
//  
//
//  Created by User on 21/03/24.
//

import ArgumentParser

struct HappyHourSubCommand: ParsableCommand {
    static var configuration  = CommandConfiguration(
        commandName: "happyhour",
        abstract: "Select a random drink",
        discussion: """
        Find the perfect drink for your #HappyHour! This subcommand allows you to get a random drink
        from our data with all the informantion you need to have a tasty experience 🍻
        """
    )
    
    func run() throws {
        drinkAleatorio()
    }
    
    func drinkAleatorio() {
        Persistence.projectName = "brazudrink"
        
        let drinks: [Drink] = (try? Persistence.readJson(file: "drinks.json")) ?? []
        // Selecionando um item aleatório
        if let itemAleatorio = drinks.randomElement() {
            loading()
      
            printColoredText(text: itemAleatorio.nome, color: "green")
            
            print(
            """

            \(itemAleatorio.descricao)
            
            \(itemAleatorio.comida)
            
            \(itemAleatorio.receita)
            """
            )
        }
    }
}

struct SelecaoSubCommand: ParsableCommand {
    
    static var configuration  = CommandConfiguration(
        commandName: "selection",
        abstract: "Select a drink to know more about",
        discussion: """
        Using the Brazudrink selection you can find drinks, get to know recipes, food combinations
        and explore the brazilian regions! Are you thirsty for Brazil? 🇧🇷
        """
    )
    
    @Argument(help: "Name of the drink")
    var drinkName: DrinkName? = nil
     
    // -r, --recipe
    @Flag(name: .shortAndLong, help: "Shows drink's recipe")
    var recipe: Bool = false
    
    // -f, --food
    @Flag(name: .shortAndLong, help: "Shows drink's food combination")
    var food: Bool = false
    
    // --rating
    @Flag(name: .long, help: "Shows drink's rating")
    var rating: Bool = false
    
    //--rate "threeStars"
    @Option (name: .long, help: "Rate drinking experience.")
    var rate: String = ""
    
    mutating func run() throws {
        
        guard let drinkName else { return }
        
        let drink = searchDrink(drinkName: drinkName) // caipirinha
        
        if recipe {
            drinkPrint()
            printColoredText(text: drink.receita, color: "white")
        }
        if food {
            print(drink.comida)
        }
        if rating {
            print(drink.avaliacao)
        }
        // brazudrink capirinha (--rate threeStars)
        if rate != "" {
            avaliar(drinkToRate: drink, rate: rate)
            print("Your avaliation: \(rate)")
        }
    }
}
