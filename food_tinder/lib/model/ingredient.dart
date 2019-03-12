class Ingredient {
  String unit;
  String amount;
  String name;

  Ingredient(this.amount, this.unit, this.name);

  String toString(){
    return "${this.amount} ${this.unit} ${this.name}";
  }
}