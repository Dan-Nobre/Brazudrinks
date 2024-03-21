// Estrutura dos dados
struct Drink: Codable /* CONVERTER PARA JSON */{
    let nome: String
    let descricao: String
    let receita: String
    let comida: String
    var alcool: Bool
    var regiao: String
    var avaliacao: String
}

//Coleção de Drinks
//let drinks: [Drink] = [
//    Drink(
//        nome: "Caipirinha",
//        descricao:
//        """
//        Made with cachaça, lemon, sugar, and ice, the caipirinha is one of Brazil's most famous drinks and is known internationally. It is considered the national drink of the country and has its roots in colonial times.
//        """
//        ,
//        receita:
//        """
//        Classic caipirinha recipe:
//           
//        Ingredients:
//        
//        - 50 ml of cachaça
//        - 1 lemon
//        - 2 teaspoons of sugar (or to taste)
//        - Ice to taste
//        
//        Instructions:
//        
//        1. Start by washing the lemon well and cutting it into small pieces. If you prefer a less bitter drink, remove the seeds.
//        2. Put the pieces of lemon and the sugar in a glass or in a caipirinha glass.
//        3. With a pestle or a muddler, comida: lightly mash the pieces of lemon and sugar at the bottom of the glass, alcool: just to release the lemon juices and mix with the sugar.
//        4. Add the ice until the glass is full.
//        5. Pour the cachaça over the ice.
//        6. With a bar spoon, regiao: stir the mixture well to combine all the ingredients.
//        7. Serve immediately and enjoy your Caipirinha!
//           
//        This is the classic recipe for Brazilian caipirinha a refreshing and flavorful drink. Remember to drink in moderation and enjoy!
//        """
//        ,
//        comida: "there is no food combination identified in our data",
//        alcool: true,
//        regiao: "brasil",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Cajuína",
//        descricao: """
//        Cajuína is a non-alcoholic beverage made from cashew fruit juice, a typical fruit of the Brazilian Northeast. It is known for its sweet and refreshing taste and is traditionally consumed during festivities and celebrations in the region.
//        """,
//        receita: "",
//        comida: """
//
//- Food that are tradionally eaten with Cajuína:
//1. **Baião de Dois:**
//    - Baião de Dois is a traditional Brazilian dish, especially popular in the Northeast region. It is a hearty and flavorful rice and beans dish cooked together with ingredients such as sausage, bacon, and spices, often garnished with coriander and served as a main course.
//2. **Pratinho (typical from Ceará):**
//    - Pratinho is a traditional dish from Ceará, a state in northeastern Brazil. It consists of a plate with various side dishes, usually including rice, beans, fried manioc flour (farofa), vinaigrette sauce, and a choice of meat or fish. It's a well-rounded meal that represents the rich culinary heritage of the region.
//3. **Pastel:**
//    - Pastel is a popular Brazilian snack that consists of thin pastry dough filled with various savory fillings, such as ground meat, cheese, chicken, or heart of palm. The filled dough is then folded and deep-fried until crispy. Pastel is often enjoyed as a street food or appetizer.
//4. **Coxinha:**
//    - Coxinha is a beloved Brazilian snack made of shredded chicken filling, typically seasoned with herbs and spices, encased in a dough, shaped like a teardrop, coated in breadcrumbs, and deep-fried until golden and crispy. It's a popular finger food enjoyed at parties, bars, and gatherings throughout Brazil.
//"""
//    ,
//        alcool: false,
//        regiao: "nordeste",
//        avaliacao: "You havent tried this drink yet"
//
//    ),
//    
//    Drink(
//        nome: "Quentão",
//        descricao:
//        """
//        Quentão is a hot drink made with cachaca, ginger, sugar, cloves, and cinnamon. It is traditionally consumed during the June festivals, which celebrate the Catholic saints Saint Anthony, Saint John, and Saint Peter, and is known to warm up the cold June nights.",
//        """
//        ,
//        receita:
//        """
//        - Classic recipe for quentão, a drink traditionally consumed during the June festivals in Brazil:
//    
//        Ingredients:
//    
//        - 1 liter of cachaca
//        - 1 liter of water
//        - 200g of sugar (or to taste)
//        - 10 cloves
//        - 3 cinnamon sticks
//        - Peel of 1 orange
//        - Peel of 1 lemon
//        - Fresh ginger peeled and sliced (to taste)
//        - Lemon slices for garnish (optional)
//        
//    Instructions:
//    
//    1. In a large pot, combine the water, sugar, cloves, cinnamon sticks, orange and lemon peels, and ginger.
//    2. Bring the pot to medium heat and let it boil for about 10 minutes, stirring occasionally to ensure that the sugar completely dissolves and the flavors mix.
//    3. After boiling for 10 minutes, reduce the heat to low and add the cachaca.
//    4. Let the quentão heat for a few more minutes, without letting it boil, just so all the flavors combine.
//    5. Remove from heat and strain the liquid to remove the ginger pieces and the fruit peels.
//    6. Serve the quentão in cups or mugs and garnish with lemon slices, if desired.
//    7. Serve hot and enjoy your quentão!
//    
//    This is a classic Brazilian quentão recipe, perfect for warming up the cold nights of June festivals or any other special occasion. Enjoy in moderation!
//    
//    """
//        ,
//        comida: "",
//        alcool: true,
//        regiao: "Brazil",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Batida-de-coco",
//        descricao: """
//        Made with coconut milk, cachaça, condensed milk and ice, the coconut batida is a very popular sweet and creamy drink, especially at parties and celebrations in the Northeast region of Brazil.
//        """
//        ,
//        receita:
//        """
//        
//    - Classic recipe for quentão, a drink traditionally consumed during the June festivals in Brazil:
//
//    Ingredients:
//
//    - 1 liter of cachaca
//    - 1 liter of water
//    - 200g of sugar (or to taste)
//    - 10 cloves
//    - 3 cinnamon sticks
//    - Peel of 1 orange
//    - Peel of 1 lemon
//    - Fresh ginger peeled and sliced (to taste)
//    - Lemon slices for garnish (optional)
//
//    Instructions:
//
//    1. In a large pot, combine the water, sugar, cloves, cinnamon sticks, orange and lemon peels, and ginger.
//    2. Bring the pot to medium heat and let it boil for about 10 minutes, stirring occasionally to ensure that the sugar completely dissolves and the flavors mix.
//    3. After boiling for 10 minutes, reduce the heat to low and add the cachaca.
//    4. Let the quentão heat for a few more minutes, without letting it boil, just so all the flavors combine.
//    5. Remove from heat and strain the liquid to remove the ginger pieces and the fruit peels.
//    6. Serve the quentão in cups or mugs and garnish with lemon slices, if desired.
//    7. Serve hot and enjoy your quentão!
//
//    This is a classic Brazilian quentão recipe, perfect for warming up the cold nights of June festivals or any other special occasion. Enjoy in moderation!
//    """,
//        comida: "",
//        alcool: true,
//        regiao: "Northeast",
//        avaliacao: "You havent tried this drink yet"
//
//    ),
//    
//    Drink(
//        nome: "Licor-de-Jenipapo",
//        descricao: """
//        Jenipapo liqueur is an alcoholic beverage made from the fruit of the jenipapo, a typical fruit from Brazil. It is known for its unique taste and is often consumed as a digestive after meals.
//        """
//        ,
//        receita:
//        """
//    - Caipirinha Recipe with Genipapo Liqueur
//    
//    Ingredients:
//    
//    - 50ml of cachaça
//    - 30ml of jenipapo liqueur
//    - 1 lime
//    - 2 teaspoons of sugar
//    - Ice to taste
//    
//    Instructions:
//    
//    1. Cut the lime into slices and place them in a glass.
//    2. Add the sugar over the lime slices.
//    3. Gently muddle the lime with the sugar in the glass, just to extract the juices.
//    4. Add the ice to the glass.
//    5. Pour the cachaça and the jenipapo liqueur over the ice and stir well to mix all the ingredients.
//    6. Decorate the glass with a slice of lime on the rim, if desired.
//    7. Serve and enjoy your caipirinha with jenipapo liqueur!
//    
//    This recipe combines the characteristic taste of Brazilian cachaça with jenipapo liqueur, resulting in a unique and delicious drink. Enjoy in moderation!
//    """
//        ,
//        comida: "",
//        alcool: true,
//        regiao: "North and Northeast",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Licor-de-Pequi",
//        descricao: "The pequi is a typical fruit from the Brazilian Cerrado and is used to make a very aromatic and tasty liqueur. It is a beverage enjoyed mainly in the Central-West region of Brazil."
//        ,
//        receita: """
//        - Recipe: Pequi Sour:
//        
//        Ingredients:
//        
//        - 2 oz of pequi liqueur
//        - 1 oz of lemon juice
//        - 3/4 oz of simple syrup (water and sugar in equal proportion)
//        - Egg white (optional)
//        - Ice
//        - Slice of lemon, for decoration (optional)
//        
//        Instructions:
//        
//        1. Fill a shaker with ice.
//        2. Add the pequi liqueur, lemon juice, and simple syrup to the shaker.
//        3. If you want a creamier texture, add the egg white to the shaker.
//        4. Shake vigorously for about 15-20 seconds to mix the ingredients well and chill the drink.
//        5. Strain the shaker's mixture into a low glass or a cocktail glass with fresh ice.
//        6. Garnish with a slice of lemon on top of the drink, if desired.
//        7. Serve your refreshing Pequi Sour immediately and enjoy!
//        
//        This drink is a delicious way to appreciate the unique flavor of pequi liqueur, combined with the acidity of the lemon and the sweet touch of the simple syrup. The egg white, if added, adds a smooth and creamy texture to the drink. Enjoy in moderation!
//        """
//        ,
//        comida: "",
//        alcool: true,
//        regiao: "Central-West",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Batida-de-Cupuaçu",
//        descricao: "Cupuaçu is an Amazonian fruit similar to cocoa, and it is used to make a delicious beverage called Cupuaçu Smoothie, which combines thefruit juice with condensed milk, ice, and sometimes a touch of cachaça. It is a refreshing and tasty option, highly appreciated in the Northern region of Brazil.",
//        receita: """
//        Recipe for Cupuaçu Cocktail
//        
//        Ingredients:
//        
//        - 1 cup cupuaçu pulp
//        - 1 can condensed milk
//        - 1 can cream
//        - 1 cup vodka (optional)
//        - Ice, to taste
//        
//        Instructions:
//        
//        1. In a blender, combine the cupuaçu pulp, condensed milk, and cream.
//        2. If using vodka, add it to the blender.
//        3. Add ice to taste to give the cocktail consistency and chill.
//        4. Blend all ingredients until smooth and creamy.
//        5. Taste the cocktail and adjust sweetness if needed by adding more condensed milk.
//        6. Pour the cocktail into glasses and serve immediately.
//        7. Garnish the glasses with cupuaçu slices or mint leaves, if desired.
//        8. Enjoy your delicious Cupuaçu Cocktail!
//        
//        This cocktail is a refreshing and delightful drink, perfect for enjoying on special occasions or for cooling down on hot days. Enjoy!
//        """
//        ,
//        comida: "",
//        alcool: true,
//        regiao: "North",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Catuaba",
//        descricao: "Catuaba is an alcoholic beverage made from the bark of native Brazilian trees, usually combined with other ingredients such as herbs and spices. It is known for its aphrodisiac properties and is consumed at parties and celebrations."
//        ,
//        receita: """
//        Recipe: Catuaba Caipirinha:
//        
//        Ingredients:
//        
//        - 2 shots of Catuaba (approximately 60 ml)
//        - 1 lime
//        - 2 tablespoons of sugar
//        - Ice, to taste
//        
//        Instructions:
//        
//        1. Cut the lime into small pieces and place them in a low glass or a caipirinha glass.
//        2. Add the sugar over the lime pieces.
//        3. Gently muddle the lime with the sugar using a muddler to release the juice and essential oils from the peel.
//        4. Fill the glass with ice almost to the top.
//        5. Pour the shots of Catuaba over the ice.
//        6. Using a bar spoon, gently stir the mixture to incorporate all the ingredients and chill the drink.
//        7. Garnish with a lime slice on the rim of the glass, if desired.
//        8. Serve your Catuaba Caipirinha immediately and enjoy!
//        
//        This is a refreshing and tasty variation of the classic Brazilian caipirinha, using Catuaba to add a unique and distinctive touch to the drink. Enjoy responsibly!
//        """
//        ,
//        comida: "",
//        alcool: true,
//        regiao: "Brazil",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Aluá",
//        descricao: "Aluá is a beverage traditionally consumed at popular parties, especially at June parties. It's made with ingredients such as corn, pineapple or apple, ginger, sugar, cloves, and cinnamon, and it can be fermented or non-alcoholic. It is known for its unique flavor and its historical roots in Northeastern traditions.",
//        receita: """
//        Classical Recipe for Aluá
//        Ingredients:
//        
//        - 2 liters of water
//        - 500g of sugar
//        - 500g of green corn (can be canned)
//        - 3 cloves
//        - 1 cinnamon stick
//        - Peel of 1 lemon
//        - Peel of 1 orange
//        - 1 cup of pinga (cachaça) or aguardente (optional)
//        
//        Instructions:
//        
//        1. In a large pan, bring the water to a boil.
//        2. Add the sugar, green corn, cloves, cinnamon stick, lemon and orange peels to the boiling water.
//        3. Cook over medium heat for about 30 minutes, stirring occasionally, until the corn is very soft and the mixture begins to thicken.
//        4. Turn off the heat and let the mixture cool completely.
//        5. Once cool, strain the mixture using a clean cloth or a fine sieve to remove the solids.
//        6. If desired, add the pinga or aguardente to the strained mixture and stir well.
//        7. Transfer the Aluá to a jug or bottle and refrigerate to cool even more.
//        8. Serve chilled in glasses and enjoy!
//        
//        This is a basic version of Aluá. Recipes can vary from region to region and some people also add fruits like pineapple or apple to the mixture for an extra touch of flavor. Be creative and adjust the recipe according to your personal preferences!
//        """
//        ,
//        comida: "",
//        alcool: true,
//        regiao: "Northeast and North",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Chimarrão",
//        descricao: "Chimarrão is a beverage made with yerba mate, served hot in a special gourd and sipped through a metal straw. It's a drink traditionally consumed in the southern region of Brazil, mainly in Rio Grande do Sul, and is part of the gaucho culture.",
//        receita: "",
//        comida: """
//        - Food that are tradionally eaten with Chimarrão:
//        1. Cricri:
//        - In Rio Grande do Sul, "Cricri" is a sweet snack made from caramelized peanuts. Peanuts are coated with caramelized sugar, forming crunchy clusters. Cricri is a popular treat enjoyed in southern Brazil, especially during regional events and celebrations
//        2. Pipoca:
//        - Pipoca, or popcorn, is a popular snack made from dried corn kernels that are heated until they pop. It's commonly enjoyed as a light and crunchy snack, often seasoned with salt, butter, or other flavorings.
//        3. Bolo de Fubá:
//        - Bolo de Fubá is a traditional Brazilian cornmeal cake made with fubá (cornmeal), eggs, sugar, and sometimes cheese or coconut. It has a moist and crumbly texture with a slightly sweet and corn-flavored taste, often enjoyed with a cup of coffee or as a dessert.
//        4. Churrasco Gaúcho:
//        - Churrasco Gaúcho refers to the traditional barbecue style from the state of Rio Grande do Sul in southern Brazil, known for its large cuts of meat, such as beef ribs, steak, and sausages, grilled over an open flame or hot coals. It's a social and festive event often accompanied by side dishes like farofa, salads, and chimichurri sauce.
//        5. Biscoito de Polvilho:
//        - Biscoito de Polvilho, or cassava flour biscuit, is a popular Brazilian snack made from polvilho (tapioca flour), water, oil, and salt. It has a light and crispy texture with a slightly savory flavor, often enjoyed on its own or with coffee as a snack.
//
//        """
//        ,
//        alcool: false,
//        regiao: "South",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Guaraná-Antártica",
//        descricao: "Guaraná Antarctica is a non-alcoholic beverage very popular in Brazil, made from the extract of the guaraná fruit. It has become one of the most recognized brands in the country and is consumed both as a standalone drink and in the form of soda.",
//        receita: "",
//        comida: """
//        - Food that are tradionally eaten with Guaraná Antarctica:
//        1. Pipoca🍿:
//        - Pipoca, or popcorn, is a popular snack made from dried corn kernels that are heated until they pop. It's commonly enjoyed as a light and crunchy snack, often seasoned with salt, butter, or other flavorings.
//        2. Coxinha:
//            - Coxinha is a beloved Brazilian snack made of shredded chicken filling, typically seasoned with herbs and spices, encased in a dough, shaped like a teardrop, coated in breadcrumbs, and deep-fried until golden and crispy. It's a popular finger food enjoyed at parties, bars, and gatherings throughout Brazil.
//        3. Pastel:
//            - Pastel is a popular Brazilian snack that consists of thin pastry dough filled with various savory fillings, such as ground meat, cheese, chicken, or heart of palm. The filled dough is then folded and deep-fried until crispy. Pastel is often enjoyed as a street food or appetizer.
//        4. Savory Paçoca:
//            - Savory paçoca is a traditional Brazilian dish made from ground meat (usually beef or chicken), mixed with toasted cassava flour (farinha de mandioca), onions, garlic, and various spices. This mixture is typically pressed into a compact shape and then sliced into individual portions. Savory paçoca is known for its rich flavor and hearty texture, often served as an appetizer or alongside other dishes in Brazilian cuisine.
//        """
//        ,
//        alcool: false,
//        regiao: "Brazil",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Mate-Gelado(Tereré)",
//        descricao: "Mate gelado, known as tereré, is a refreshing beverage made with yerba mate, usually served cold in a special cuia (gourd). It is very popular among populations in the south and midwest of Brazil, especially in the summer, due to its invigorating properties.",
//        receita: "",
//        comida: """
//        
//        - Mate-Gelado e Biscoitos Globo: a *carioca* love story:
//            
//            Biscoitos Globo:
//            
//            - Biscoito Globo is a popular snack in Brazil, particularly in Rio de Janeiro. It's a crispy and light wheat flour biscuit typically shaped like a ring. Globo biscuits are often enjoyed plain or with various toppings such as cheese, butter, or sweet spreads. They are commonly found at beaches, parks, and outdoor events, and are a beloved part of Brazilian snacking culture.
//        
//        """
//        ,
//        alcool: false,
//        regiao: "Southeast",
//        avaliacao: "You havent tried this drink yet"
//    ),
//    
//    Drink(
//        nome: "Caldo-de-Cana",
//        descricao: "Caldo de cana is a popular beverage made from freshly squeezed sugarcane juice. It is a refreshing and sweet drink consumed throughout Brazil, especially in open-air markets, beaches, and busy streets.",
//        receita: "",
//        comida:
//        """
//        - Caldo de Cana and Pastel: a brazilian love story
//        - Pastel:
//            - Pastel is a popular Brazilian snack that consists of thin pastry dough filled with various savory fillings, such as ground meat, cheese, chicken, or heart of palm. The filled dough is then folded and deep-fried until crispy. Pastel is often enjoyed as a street food or appetizer. Easily can be found on brazilian public markets.
//        """
//        ,
//        alcool: false,
//        regiao: "Brazil",
//        avaliacao: "You havent tried this drink yet"
//    )
//]
