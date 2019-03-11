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
              4)),
      Food(
        "GLAZED SALMON WITH ZUCCHINI",
        "https://assets.marthastewart.com/styles/wmax-300/d38/five-ways-broiled-salmon-006-med108877/five-ways-broiled-salmon-006-med108877_vert.jpg?itok=AxN9wXOW",
        ["Dinner"],
        Recipe(
          "Healthy salmon and zucchini slices are broiled together in this quick and easy dinner. Source: Everyday Food, October 2012 (https://www.marthastewart.com/933877/glazed-salmon-zucchini)",
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
        ),
      ),
      Food (
        "BROILED SHRIMP SCAMPI",
        "https://assets.marthastewart.com/styles/wmax-300/d19/20060105_edf_scampi/20060105_edf_scampi_vert.jpg?itok=qLFLPAyM",
        ["Dinner"],
        Recipe(
          "This classic shrimp dish with garlic and lemon juice is so easy to make. Source: Everyday Food, January/February 2006 (https://www.marthastewart.com/312997/broiled-shrimp-scampi)",
          [
            Ingredient("1 1/2", "lbs", "large shrimp, peeled and deveined, tails left on, patted dry"),
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
          4
        ),
      ),
    ];
  }
}
