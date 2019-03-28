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
          "Grilled Chicken with Tomato, Soy & Sesame Seeds",
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
        "Glazed Salmon with Zucchini",
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
        "Broiled Shrimp Scampi",
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
        "Steak Stroganoff",
        "https://assets.epicurious.com/photos/5c61ff8a4f003745865190d6/6:4/w_620%2Ch_413/Weeknight-Beef-Stroganoff-recipe-07022019.jpg",
        ["Dinner"],
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
        "Grilled Chicken and Quinoa With Matcha Dressing",
        "https://assets.epicurious.com/photos/5c6442ee0c9bd34e44ec6f50/6:4/w_620%2Ch_413/grilled-chicken-and-quinoa-matcha-dressing-recipe-BA-021319.jpg",
        ["Lunch"],
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
      Food(
        "Savory Dutch Baby For Two",
        "https://assets.epicurious.com/photos/5c61b3ce580916481fe06e33/6:4/w_620%2Ch_413/Savory-Dutch-Baby-For-Two-hero-2-07022019.jpg",
        ["Breakfast"],
        Recipe(
          "Parmesan and thyme make this Baby savory, which makes it perfect to eat alongside eggs. But the real beauty of this recipe is that the batter can be made up to two days in advance—and kept in the fridge for an easy romantic breakfast for two.",
          [
            Ingredient("1/4", "cup", "all-purpose flour"),
            Ingredient("1", "tbsp", "sugar"),
            Ingredient("1", "tsp", "finely chopped thyme leaves"),
            Ingredient("1/2", "tsp", "kosher salt"),
            Ingredient("1/2", "tsp", "freshly ground black pepper"),
            Ingredient("2", "tbsp", "finely grated Permesan, plus more for serving"),
            Ingredient("2", "", "large eggs"),
            Ingredient("1/2", "cup", "whole milk"),
            Ingredient("2", "tbsp", "unsalted butter, cut into pieces"),
            Ingredient("", "", "Crème fraîche, smoked salmon, baby greens, and lemon wedges (for serving; optional)"),
          ],
          [
            "Preheat oven to 425°F. Whisk flour, sugar, thyme, salt, pepper, and 2 Tbsp. Parmesan in a small bowl.",
            "Process eggs and milk in a blender until light and frothy, about 2 minutes. Add flour mixture and pulse to combine.",
            "Heat a 10\" cast-iron skillet over medium-high. Once hot, melt butter and swirl to coat skillet. Pour batter into hot melted butter in skillet. Transfer to oven and bake until puffed and golden brown, 12–15 minutes.",
            "Sprinkle Parmesan over pancake before serving with crème fraîche, smoked salmon, baby greens, and lemon wedges (if using).",
            "Do Ahead: Batter can be made 2 days ahead. Transfer to a medium jar and chill. Shake jar before cooking."
          ],
          2,
          10,
          25,
          "https://www.epicurious.com/recipes/food/views/savory-dutch-baby-for-two"
        ),
      ),
      Food (
        "Grapefruit Bars with Candied Zest",
        "https://assets.epicurious.com/photos/5c114607b6a8347908b6f8e4/6:4/w_620%2Ch_413/grapefruit-bars-with-candied-zest-recipe-BA-121218.jpg",
        ["Dessert"],
        Recipe(
          "Joy to the world: a citrus bar just as beautiful as it is zingy. The twice-cooked curd method was inspired by authors Rose Levy Beranbaum and Melissa Clark and ensures that these bars are extra sturdy and have a smooth, shiny surface. They hold their shape well even when sliced.",
          [
            Ingredient("1", "cup", "all-purpose flour"),
            Ingredient("3/4", "cup", "powdered sugar"),
            Ingredient("2", "tbsp", "granulated sugar"),
            Ingredient("3/4", "tsp", "kosher salt"),
            Ingredient("1/2", "cup", "chilled unsalted butter, cut into pieces"),
            Ingredient("2", "", "large egg yolks"),
            Ingredient("1", "", "grapefruit"),
            Ingredient("1/2", "cup", "granulated sugar, divided"),
            Ingredient("3", "", "large eggs"),
            Ingredient("3", "", "large egg yolks"),
            Ingredient("1", "cup", "granulated sugar"),
            Ingredient("1", "tbsp", "cornstarch"),
            Ingredient("1", "tbsp", "finely grated grapefruit zest"),
            Ingredient("1/4", "cup", "fresh grapefruit juice"),
            Ingredient("2", "tsp", "finely grated lemon zest"),
            Ingredient("3/4", "cup", "fresh lemon juice"),
            Ingredient("1", "tsp", "vanilla extract or paste"),
            Ingredient("1/2", "tsp", "kosher salt"),
            Ingredient("1/2", "cup", "unsalted butter, room temperature, cut into 8 pieces"),
            Ingredient("", "", "powdered sugar (for serving, optional)")
          ],
          [
            "Place a rack in middle of oven; preheat to 350°F. Line an 8x8\" baking pan, preferably metal, with overlapping sheets of parchment paper, leaving at least 4\" overhang on each side. Pulse flour, powdered sugar, granulated sugar, and salt in a food processor a few times to combine. Add butter and pulse until largest pieces are pea-size. Add egg yolks and pulse just until dough comes together in small clumps. (Shortbread can also be made by hand: Whisk dry ingredients in a large bowl, then work in the butter with your fingers before mixing in the egg yolks with a sturdy spoon.)",
            "Transfer dough to prepared pan (you may find it easier to form the dough into a ball first, instead of working with clumps—entirely up to you!) and press into an even layer. If dough is sticky, use a piece of plastic wrap between your hand and the dough. Prick dough with a fork in several spots (this helps it stay flat as it bakes). Bake shortbread until edges and top are golden brown, 24–28 minutes. Let cool.",
            "While the shortbread is baking, use a sharp knife to remove zest from grapefruit in 2\"–3\" wide strips (it’s okay to leave some white pith attached). Slice strips very thinly lengthwise; save fruit for another use. Combine zest and 2 cups water in a small saucepan and bring to a simmer. Drain immediately. Combine zest with 1/4 cup granulated sugar and 1 cup water in the same saucepan and bring to a simmer. Cook, stirring occasionally, until zest is translucent and softened, 15–20 minutes. Drain, discarding syrup, and toss zest in a small bowl with remaining 1/4 cup granulated sugar. Set aside until ready to use.",
            "Reduce oven temperature to 300°F. Vigorously whisk eggs, egg yolks, granulated sugar, and cornstarch in a large saucepan until smooth and sugar is mostly dissolved. Whisk in grapefruit zest and juice, lemon zest and juice, and vanilla. Set saucepan over medium heat and cook, whisking constantly and making sure to get into the corners of the pan, until curd begins to bubble slightly around the edges and thickens, about 5 minutes. Simmer very gently, still whisking, 30 seconds, then remove from heat. Whisk salt into curd, followed by butter a piece at a time, whisking to fully incorporate after each addition. Scrape curd into pan with shortbread and smooth over crust. Top with some of the candied grapefruit zest (you probably won’t need all of it; snack on any left over!).",
            "Bake grapefruit bars until surface of curd is set (the center will still wobble slightly when pan is gently shaken), 20–25 minutes. Transfer to the refrigerator and chill until very cold, at least 3 hours, or preferably overnight.",
            "Just before serving, slice grapefruit bars into 2\" squares and dust with powdered sugar if desired.",
            "Shortbread can be baked 3 days ahead. Store tightly covered at room temperature. Grapefruit can be candied 1 week ahead. Store airtight at room temperature. Bars can be baked 3 days ahead. Cover and keep chilled."
          ],
          0,
          0,
          0,
          "https://www.epicurious.com/recipes/food/views/grapefruit-bars-with-candied-zest"
        ),
      ),
      Food (
        "Pimiento Cheese Crackers",
        "https://assets.epicurious.com/photos/5c1149673e9ec157ff93ded2/6:4/w_620%2Ch_413/pimento-cheese-crackers-recipe-BA-121218.jpg",
        ["Snack"],
        Recipe(
          "The addictive cheddar cracker is all grown up, thanks to a little heat from the cayenne and a hint of sweet pepper from the pimiento. This dough can be formed into a log and stashed in the freezer so it’s on hand for whenever you just happen to need a party appetizer. Let thaw in the fridge overnight before slicing.",
          [
            Ingredient("12", "oz", "sharp cheddar, coarsely grated (about 4 cups)"),
            Ingredient("1", "cup", "all-purpose flour"),
            Ingredient("2", "tbsp", "all-purpose flour"),
            Ingredient("1 1/2", "tsp", "kosher salt"),
            Ingredient("1/4", "tsp", "cayenne pepper"),
            Ingredient("1/4", "cup", "chopped jarred pimiento peppers"),
            Ingredient("5", "tbsp", "chilled unsalted butter, cut into pieces"),
            Ingredient("3", "tbsp", "white or black sesame seeds")
          ],
          [
            "Pulse cheese, flour, salt, and cayenne in a food processor to combine (4–6 pulses should do it). Add pimiento peppers and pulse until mixture turns orange (another 2 or 3 pulses). Add butter and pulse until largest pieces are about the size of a pea (4–6 pulses). Drizzle in 2 Tbsp. ice water and pulse 2 or 3 more times. Dough should stick together when squeezed in your hand. If not, pulse in another tablespoonful of ice water.",
            "Transfer dough to a work surface and form into a tightly packed 2\"-diameter log. Gently sprinkle sesame seeds over surface and roll log over sesame seeds, pressing them into dough to adhere, until completely coated. Discard any sesame seeds that don’t stick. Wrap dough in plastic and chill at least 4 hours and up to 2 days before rolling out",
            "Place a rack in the middle of oven; preheat to 350°F. Unwrap dough and using a sharp knife, slice into thin rounds; aim for 1/8\"–1/4\" thick. Transfer rounds to a parchment-lined baking sheet, spacing about 1\" apart (they won’t all fit in one batch). Prick each cracker 3–4 times with a fork to keep them from puffing up and bake, rotating baking sheet front to back halfway through, until tops and edges are golden, 25–30 minutes. Let cool on baking sheet; crackers will crisp as they cool. Repeat with remaining rounds and a fresh parchment-lined baking sheet.",
          ],
          8,
          0,
          0,
          "https://www.epicurious.com/recipes/food/views/pimiento-cheese-crackers"
        )
      ),
      Food (
        "Cranberry-Pistachio Based Alaska",
        "https://assets.epicurious.com/photos/5c0997ed4c751936404124bd/6:4/w_620%2Ch_413/Gourmet-Christmas-Cranberry-Pistachio-Baked-Alaska-Recipe-14112018.jpg",
        ["Dessert"],
        Recipe(
          "The magic of Christmas can be summed up in this splendid present to everyone at the table. Underneath the toasted meringue, you’ll find a surprising lightness that comes from cheery red cranberry sorbet layered with pale green pistachio ice cream and buttery pound cake (store-bought works just fine). Gift wrapping is optional.",
          [
            Ingredient("1/2", "", "vanilla bean"),
            Ingredient("1", "cup", "whole milk"),
            Ingredient("1", "cup", "heavy cream"),
            Ingredient("1/3", "cup", "sugar, divided"),
            Ingredient("2", "", "large egg yolks"),
            Ingredient("1/4", "cup", "well-stirred pistachio paste"),
            Ingredient("1/2", "cup", "raw shelled pistachios, coarsely chopped"),
            Ingredient("2", "cups", "fresh or frozen cranberries (7 oz)"),
            Ingredient("1", "cup", "water"),
            Ingredient("1/2", "cup", "sugar"),
            Ingredient("2", "strips", "orange zest (3- by 1/2-inch"),
            Ingredient("", "", "pound cake"),
            Ingredient("3", "", "large egg whites at room temperature"),
            Ingredient("1/2", "cup", "sugar"),
          ],
          [
            "Split vanilla bean lengthwise and scape seeds into a heavy medium saucepan using tip of a paring knife, then add pod. Add milk, cream, and half of sugar and bring to a boil, stirring until sugar has dissolved.",
            "Whisk yolks with remaining sugar in a large bowl. Slowly add hot milk mixture, whisking. Return mixture to saucepan and cook over medium-low heat, stirring constantly with a wooden spoon, until custard is slightly thickened and registers 170°F on an instant-read thermometer (do not let boil)",
            "Immediately strain through a fine-mesh sieve into a metal bowl, discarding vanilla bean. Whisk in pistachio paste. Chill custard at least 6 hours.",
            "Bring cranberries, water, sugar, and zest to a boil in a medium saucepan, then simmer, stirring occasionally, until most of the cranberries have burst, about 5 minutes. Purée in a blender (use caution when blending hot liquids), then force through a fine-mesh sieve into a bowl. Chill at least 6 hours.",
            "Line loaf pan with a large sheet of plastic wrap, leaving a 4-inch overhang on all sides. Trim off top of cake and cut 2 (1/2-inch-thick) long horizontal slices from cake, reserving remainder for another use. Place 1 layer in bottom of pan, trimming to fit, and put in freezer. Cover remaining cake layer with plastic wrap to keep moist.",
            "Freeze sorbet base in ice cream maker, then transfer to loaf pan, smoothing evenly over cake layer. Freeze 1 hour.",
            "Freeze custard in cleaned ice cream maker, then fold in chopped pistachios, spread ice cream over cranberry sorbet, smoothing top, then top with remaining cake layer, pressing it flat. Wrap cake with overhang and freeze until firm, at least 6 hours.",
            "Preheat oven to 450°F with rack in middle.",
            "Beat egg whites with an electric mixer at medium-high speed until foamy. Gradually beat in sugar, then beat until whites hold stiff peaks. Invert cake onto a parchment-lined baking sheet and discard plastic wrap. Spread meringue over top and sides of cake. Bake until meringue is tipped with brown, 3 to 5 minutes. Serve immediately.",
            "Assembled cake (without meringue) can be frozen, wrapped tightly with plastic wrap, up to 4 days. Cake can be covered with meringue (but not baked) 4 hours ahead and frozen, uncovered.",
          ],
          8,
          60,
          60*13,
          "https://www.epicurious.com/recipes/food/views/cranberry-pistachio-baked-alaska"
        ),

      ),
    ];
  }
}
