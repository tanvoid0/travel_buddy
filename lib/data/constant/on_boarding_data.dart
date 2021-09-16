final onBoardingData = [
  OnBoardingData(
    image: 'on_boarding_1.png',
    title: 'Find Travel Partner',
    description:
        'Discover other Bangladeshi traveler in the same destination at the same time',
  ),
  OnBoardingData(
    image: 'on_boarding_2.png',
    title: "Connect with Guide",
    description:
        "Connect with local guide including your travel partners at a cheap price and enjoy your tour with our trusted local guides",
  ),
  OnBoardingData(
    image: 'on_boarding_3.png',
    title: "Book Local Transport, Hotel, Local Activities",
    description:
        "Connect with local guide including your travel partners at a cheap price and enjoy your tour with our trusted local guides",
  ),
  OnBoardingData(
      image: "on_boarding_4.png",
      title: "Enjoy the Tour!",
      description:
          "Enjoy your tour to your desired place with your travel partners through the App!"),
  OnBoardingData(
    image: "on_boarding_5.png",
    title: "Share Your Travel Story!",
    description: "Every travel is an adventure! Share your travel stories with other travellers!",
  ),
];

class OnBoardingData {
  final String image;
  final String title;
  final String description;

  OnBoardingData(
      {required this.image, required this.title, required this.description});
}
