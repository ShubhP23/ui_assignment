class SliderModel {
  String imagePath, desc;
  SliderModel({required this.imagePath, required this.desc});

  void setImageAssetPath(String getImagePath) {
    imagePath = getImagePath;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imagePath;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = SliderModel();

  //1
  sliderModel.setImageAssetPath('assets/learning1.png');
  sliderModel.setDesc('Get connected to a live tutor in just 60 seconds!');
  slides.add(sliderModel);
  sliderModel = SliderModel();

  //2
  sliderModel.setImageAssetPath('assets/learning2.png');
  sliderModel.setDesc('Get connected to a live tutor in just 60 seconds!');
  slides.add(sliderModel);
  sliderModel = SliderModel();

  //3
  sliderModel.setImageAssetPath('assets/learning3.png');
  sliderModel.setDesc('Get connected to a live tutor in just 60 seconds!');
  slides.add(sliderModel);
  sliderModel = SliderModel();
  return slides;
}
