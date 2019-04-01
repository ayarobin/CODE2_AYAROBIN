//We are going to make a baker who takes ingredients and makes them into tasty 
//using functions, parameters, and return values

void setup () {
  birthday = bake(14, "pie");
  bake(200, "blueberry");
  bake(2000, "acai");
  println(ingredients);
  println(birthday);
  
}

int ingredients = 1000;
Boolean birthday;

Boolean bake (int servings, String foodType) {
  if (ingredients>=servings) {
    println(servings);
    println(foodType);
    ingredients-=servings;
    println("Baker bakes " +servings+ " a " +foodType+ "(s)!" );
    return true;
  } else {
    println("Baker has for the left for the store. No cake for you!");
     return false;
  }
 
}
