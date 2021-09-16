import 'package:provider/provider.dart';
import 'package:travel_buddy/data/constant/on_boarding_data.dart';
import 'package:travel_buddy/data/provider/app_state.dart';
import 'package:travel_buddy/data/provider/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  var _index = 0;
  final _pageController = PageController(initialPage: 0);

  List<OnBoardingData> _onBoardingData = onBoardingData;

  skip() async {
    await Provider.of<AppState>(context, listen: false)
        .setSplashFinished();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            PageView(
              onPageChanged: (value) {
                setState(() {
                  _index = value;
                });
              },
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                _onBoardingData.length,
                (int index) => Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        top: 200,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .3,
                          child: Image.asset(
                              'assets/images/ui/${_onBoardingData[index].image}'),
                        ),
                      ),

                      // Title
                      Positioned(
                        bottom: 120,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 100,
                              child: Text(
                                _onBoardingData[_index].title,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: Theme.of(context).accentColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width - 100,
                              child: Text(
                                _onBoardingData[_index].description,
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: GoogleFonts.nunito(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Skip Button
            if (_index != _onBoardingData.length - 1)
              Positioned(
                top: 50,
                right: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ThemeConst.greyColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.transparent)))),
                  child: Text(
                    "Skip",
                    style: GoogleFonts.nunito(color: Colors.black),
                  ),
                  onPressed: skip,
                ),
              ),

            Positioned(
              bottom: 50,
              child: _index != _onBoardingData.length - 1
                  ? SmoothPageIndicator(
                      controller: _pageController,
                      count: _onBoardingData.length,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xFFFF5153),
                        dotColor: Color(0xFFFF5153).withAlpha(50),
                        dotHeight: 5,
                        dotWidth: 5,
                        spacing: 15,
                      ),
                    )
                  : ElevatedButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).accentColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(
                                          color: Colors.transparent)))),
                      child: Text(
                        "Let's Travel!",
                        style: GoogleFonts.nunito(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: skip,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
