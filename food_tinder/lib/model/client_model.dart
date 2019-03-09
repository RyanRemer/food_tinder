import 'package:food_tinder/model/ingredient.dart';
import 'package:food_tinder/model/food.dart';
import 'package:food_tinder/model/recipe.dart';

class ClientModel {
  static ClientModel singleton = ClientModel();
  static ClientModel getInstance() {
    return singleton;
  }

  List<Food> dislikedFood;
  List<Food> likedFood;
  List<Food> uncheckedFoods;

  ClientModel() {
    dislikedFood = List<Food>();
    likedFood = List<Food>();
    uncheckedFoods = [
      Food(
          "GRILLED CHICKEN WITH TOMATO, SOY & SESAME SEEDS",
          "http://www.fussfreecooking.com/wp-content/uploads/2015/07/a1.jpg",
          ["Dinner"],
          Recipe(
              "These super delicious and easy grilled chicken fillets are perfect accompaniment for rice with side dishes such as sauteed Asian greens like bok choy or gai larn as well as sunny side up eggs. If you prefer a lighter meal, why not pair them with pre-packaged Asian mix salad leaves and roasted peanuts/cashews.",
              [
                Ingredient("2", "Tbsps", "tomato paste"),
                Ingredient("2", "Tbsps", "sesame seeds"),
                Ingredient("1", "Tbsps", "sesame oil"),
                Ingredient("500", "g", "chicken thigh fillets"),
              ],
              [
                "Preheat oven to 180C. Line baking tray with parchment paper and set aside.",
                "In a mixing bowl, add tomato paste, sesame seeds, sesame oil and sweet soy sauce and whisk until well combined with a fork.",
                "Coat the chicken thigh fillets and arrange them on the prepared baking tray.",
                "Bake for 25 to 30 minutes and serve immediately with your choice of rice or salad."
              ],
              4)),
    ];
  }
}
