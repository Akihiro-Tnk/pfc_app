enum Nutrient {
  protein(4),
  fat(9),
  carbohydrate(4);

  final int kcal;

  const Nutrient(this.kcal);

  double totalKcal(double gram) => kcal * gram;
}
