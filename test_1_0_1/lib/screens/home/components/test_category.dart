class testCategory {
  final String name;
  final String image;
  final String route;

  testCategory(this.name, this.image, this.route);
}

List<testCategory> testCategories = categoryData
    .map((item) => testCategory(item["name"], item["image"], item["route"]))
    .toList();

var categoryData = [
  {"name": "BAI 검사", "image": "assets/images/counselor.png", "route": "/bai_detail"},
  {"name": "K-MDQ 검사", "image": "assets/images/sitting girl.png", "route": "/kmdq_detail"},
  {"name": "PHQ 검사", "image": "assets/images/lonely.png", "route": "/phq_detail"},
  {"name": "PSS 검사", "image": "assets/images/stress.png", "route": "/pss_detail"},
  {"name": "PSQI 검사", "image": "assets/images/insomnia.png", "route": "/psqi_detail"},
  {"name": "IDS-SR 검사", "image": "assets/images/insomnia2.png", "route": "/ids_detail"},
];