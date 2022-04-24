class OnBoardModals {
  String? image;
  String? title;
  String? description;

  // String? description1;
  // String? description2;
  // String? description3;

  OnBoardModals({
    this.image,
    this.title,
    this.description,
    // this.description1,
    // this.description2,
    // this.description3,
  });
}

List<OnBoardModals> onBoardingList = [
  OnBoardModals(
    image: "assets/images/bag.png",
    title: "Shop Easily ",
    description:
    "Get all your pet supplies by one click",
  ),
  OnBoardModals(
    image: "assets/images/3.png",
    title: "Browse Blog",
    description:
    "Find useful information for your pet",
  ),
  OnBoardModals(
    image: "assets/images/2.png",
    title: "Easy Booking",
    description:
    "Now you can book services as grooming, pet boarding, and vet service for your pet",
  ),
  OnBoardModals(
    image: "assets/images/4.png",
    title: "Add all your pets in one app",
    description:
    "Add all of your pets in one app and manage their accounts easily ",
  ),
];