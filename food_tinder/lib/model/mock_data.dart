import 'package:food_tinder/model/ingredient.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/recipe.dart';

class MockData {
  static MockData singleton = MockData();
  static MockData getInstance() {
    return singleton;
  }

  List<Food> foods;

  MockData() {
    foods = [
      Food(
          "GRILLED CHICKEN WITH TOMATO, SOY & SESAME SEEDS",
          "http://www.fussfreecooking.com/wp-content/uploads/2015/07/a1.jpg",
          ["Dinner"],
          Recipe(
              "These super delicious and easy grilled chicken fillets are perfect accompaniment for rice with side dishes such as sauteed Asian greens like bok choy or gai larn as well as sunny side up eggs. If you prefer a lighter meal, why not pair them with pre-packaged Asian mix salad leaves and roasted peanuts/cashews.",
              [
                Ingredient("2", "tbsps", "tomato paste"),
                Ingredient("2", "tbsps", "sesame seeds"),
                Ingredient("1", "tbsps", "sesame oil"),
                Ingredient("500", "g", "chicken thigh fillets"),
              ],
              [
                "Preheat oven to 180C. Line baking tray with parchment paper and set aside.",
                "In a mixing bowl, add tomato paste, sesame seeds, sesame oil and sweet soy sauce and whisk until well combined with a fork.",
                "Coat the chicken thigh fillets and arrange them on the prepared baking tray.",
                "Bake for 25 to 30 minutes and serve immediately with your choice of rice or salad."
              ],
              4,
              0,
              0,
              "")),
      Food(
        "GLAZED SALMON WITH ZUCCHINI",
        "https://assets.marthastewart.com/styles/wmax-300/d38/five-ways-broiled-salmon-006-med108877/five-ways-broiled-salmon-006-med108877_vert.jpg?itok=AxN9wXOW",
        ["Dinner"],
        Recipe(
          "Healthy salmon and zucchini slices are broiled together in this quick and easy dinner. Source: Everyday Food, October 2012",
          [
            Ingredient("4", "", "zucchini"),
            Ingredient("4", "4 oz", "skinless salmon fillets"),
            Ingredient("", "", "olive oil"),
            Ingredient("", "", "orange marmalade"),
            Ingredient("", "", "grainy mustard")
          ],
          [
            "Quarter zucchini and brush with oil.",
            "Season zucchini and salmon fillets and broil on an oiled rimmed baking sheet until salmon is opaque throughout, about 5 minutes.",
            "Combine equal parts mustard and marmalade, brush on salmon, and broil 1 to 2 minutes more."
          ],
          4,
          10,
          5,
          "https://www.marthastewart.com/933877/glazed-salmon-zucchini",
        ),
      ),
      Food(
        "BROILED SHRIMP SCAMPI",
        "https://assets.marthastewart.com/styles/wmax-300/d19/20060105_edf_scampi/20060105_edf_scampi_vert.jpg?itok=qLFLPAyM",
        ["Dinner"],
        Recipe(
            "This classic shrimp dish with garlic and lemon juice is so easy to make. Source: Everyday Food, January/February 2006",
            [
              Ingredient("1 1/2", "lbs",
                  "large shrimp, peeled and deveined, tails left on, patted dry"),
              Ingredient("2", "cloves", "garlic, minced"),
              Ingredient("2", "tbsps", "freshly squeezed lemon juice"),
              Ingredient("1", "tbsp", "olive oil"),
              Ingredient("2", "tbsp", "chopped fresh parsley"),
              Ingredient("", "", "coarse salt and ground pepper"),
              Ingredient("", "", "Lemon wedges, for serving")
            ],
            [
              "Heat broiler with rack set 4 inches from heat. Place shrimp on a large broilerproof rimmed baking sheet.",
              "Sprinkle with oil and garlic, and season generously with salt and pepper; toss to coat. Arrrange shrimp in a single layer.",
              "Broil until opaque throughout, 3 to 4 minutes. Sprinkle with lemon juice and parsley; toss to combine. Serve immediately; garnish with lemon wedges.",
            ],
            4,
            0,
            20,
            "https://www.marthastewart.com/312997/broiled-shrimp-scampi"),
      ),
      Food(
        "STEAK STROGANOFF",
        "https://assets.epicurious.com/photos/5c61ff8a4f003745865190d6/6:4/w_620%2Ch_413/Weeknight-Beef-Stroganoff-recipe-07022019.jpg",
        ["DINNER"],
        Recipe(
            "This is not your grandma’s beef stroganoff. We took our favorite parts of the classic—the creamy mushroom sauce and the buttered egg noodles—and added a squeeze of lemon, a pan-seared medium-rare strip steak, and fresh dill for an updated weeknight dinner.",
            [
              Ingredient("1", "lb", "boneless New Yrok strip streak, patted dry"),
              Ingredient("2", "tbsp", "extra-virgin olive oil, divided"),
              Ingredient("2", "tsp", "kosher salt, divided, plus more"),
              Ingredient("1", "tsp", "freshly ground black pepper, divided, plus more"),
              Ingredient("1", "lb", "wild mushrooms, such as oyster or maitake, torn into pieces"),
              Ingredient("4", "", "garlic cloves, crushed"),
              Ingredient("12", "oz", "wide egg noodles"),
              Ingredient("4", "tbsp", "unsalted butter"),
              Ingredient("2", "tsp", "finely grated lemon zest"),
              Ingredient("3", "tbsp", "brandy"),
              Ingredient("1/2", "cup", "heavy cream"),
              Ingredient("1", "tbsp", "Worcestershire sauce"),
              Ingredient("1", "tsp", "Dijon mustard"),
              Ingredient("1/2", "cup", "sour cream"),
              Ingredient("1/2", "cup", "torn dill")
            ],
            [
              "Heat a dry 10\" skillet, preferably cast iron, over medium-high. Rub steak with 1 Tbsp. oil, then season all over with 1 tsp. salt and 1/2 tsp. pepper. Cook, turning every 2 minutes and making sure to get color on the fat cap, until browned on all sides and medium-rare (an instant-read thermometer inserted into the center should register 120°F), 10–15 minutes. Transfer steak to a plate. Pour off oil from skillet, leaving crispy bits behind.",
              "Heat remaining 2 Tbsp. oil in same skillet over medium-high. Add mushrooms and cook, stirring occasionally, until golden brown and beginning to crisp, 6–8 minutes. Add garlic, season with 1 tsp. salt and 1/2 tsp. pepper, and continue to cook until mushrooms are well browned and garlic is fragrant, 3–4 minutes.",
              "Meanwhile, cook noodles in a large pot of boiling salted water, stirring occasionally, until al dente. Drain and return to pot. Add butter, lemon zest, and lemon juice; season to taste with salt and pepper.",
              "Stir brandy and 1/2 cup water in a small bowl. Add to mushroom mixture and cook, stirring occasionally, until reduced by half, about 2 minutes. Remove from heat, then add cream, Worcestershire, and mustard and stir to combine. The heat of the pan will reduce and thicken the sauce slightly—if it doesn’t, cook over medium-low heat for about 1 minute. Stir in sour cream until combined and warmed through.",
              "Slice steak against the grain into 1/2\"-thick slices. Divide noodles among plates. Top with steak, creamed mushrooms, and dill, then season with a few cranks of pepper."
            ],
            4,
            0,
            45,
            "https://www.epicurious.com/recipes/food/views/steak-stroganoff"
        ),
      ),
      Food(
        "GRILLED CHICKEN AND QUINOA WITH MATCHA DESSING",
        "https://www.epicurious.com/recipes/food/views/grilled-chicken-and-quinoa-with-matcha-dressing",
        ["LUNCH"],
        Recipe(
            "The dressing on this bowl is a green goddess 2.0, with matcha adding an earthy undertone to the whole dish. Ceremonial is the highest grade of matcha and is made for drinking from the youngest tea leaves. Culinary matcha is still high-quality but has a more robust flavor, allowing it to shine through when combined with other ingredients.",
            [
              Ingredient("1/2", "cup", "quinoa"),
              Ingredient("2", "", "large skinless, boneless chicken breasts (about 18 oz)"),
              Ingredient("2", "tbsp", "extra-virgin olive oil"),
              Ingredient("", "", "freshly ground black pepper"),
              Ingredient("1", "cup", "vegan or regular mayonnaise"),
              Ingredient("2", "tbsp", "fresh lime juice"),
              Ingredient("2", "tsp", "culinary-grade matcha"),
              Ingredient("1 1/2", "tsp", "Dijon mustard"),
              Ingredient("1/2", "tsp", "agave nectar"),
              Ingredient("2", "", "garlic cloves"),
              Ingredient("1 1/2", "tsp", "kosher salt, plus more"),
              Ingredient("1/2", "cup", "basil leaves"),
              Ingredient("1/4", "cup", "parsley leaves with tender stems"),
              Ingredient("12", "cups", "baby greens (such as kale, spinach, and/or arugula)"),
              Ingredient("2", "cups", "cherry tomatoes, halved"),
              Ingredient("4", "", "Persain cucumbers, cut into 1\" pieces (about 2 cups)"),
              Ingredient("2", "", "avocado, cut into 3/4\" pieces"),
              Ingredient("1 1/3", "cups", "crumbled feta")
            ],
            [
              "Bring a small pot of water to a boil. Add quinoa, return to a boil, and cook until tender, 15–20 minutes. Drain, return quinoa to warm pot, and fluff with a fork to release some of the steam. Season with salt; cover to keep warm until ready to serve.",
              "Meanwhile, prepare a grill for medium-high heat. (Or heat a cast-iron grill pan or medium skillet over medium-high.) Rub chicken on all sides with oil and season with salt and pepper. Grill (or sear) chicken, turning halfway through, until just cooked through, 12–15 minutes. Transfer chicken to a cutting board and let rest 5 minutes, then cut into 1/2\" pieces.",
              "Purée mayonnaise, lime juice, matcha, mustard, agave, garlic, and 1 1/2 tsp. salt in a food processor until smooth. Add basil and parsley and pulse until incorporated.",
              "Toss quinoa, chicken, greens, tomatoes, and cucumbers in a large bowl to combine. Add 1/2 cup dressing and toss to coat; season with salt.",
              "Divide salad among bowls and top with avocado and feta. Serve remaining dressing alongside.",
            ],
            4,
            0,
            0,
            "https://www.epicurious.com/recipes/food/views/grilled-chicken-and-quinoa-with-matcha-dressing"),
      ),
    ];
  }
}
