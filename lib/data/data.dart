import 'package:travel_buddy/data/constant/constants.dart';
import 'package:travel_buddy/data/model/accommodation/accommodation.dart';
import 'package:travel_buddy/data/model/place/place.dart';

import 'model/travel_story/travel_story.dart';
import 'model/trip/trip.dart';
import 'model/user/user.dart';

final places = [
  const Place(
    id: "sdlfs",
    title: "Venice",
    location: "Italy",
    image: Constants.largePicture1,
    going: 556,
  ),
  const Place(
    id: "skdlfjs",
    title: "Lake Kawaguchi",
    location: "Yamanashi, Japan",
    image: Constants.largePicture2,
    going: 42,
  ),
  const Place(
    id: "sdkf",
    title: "Sigiriya",
    location: "Sri Lanka",
    image: Constants.largePicture3,
    going: 52,
  ),
  const Place(
    id: "sdlfk",
    title: "Hiking mountains",
    location: "Switzerland",
    image: Constants.largePicture4,
    going: 154,
  )
];

final trips = [
  Trip(
    id: "1",
    host: users[0],
    title: "I want a travel partner to go with my trip to bandarban",
    description: "We will Start our Journey from Dhaka to Bandarban by Non Ac Bus. After arrived Bandarban check in at hotel (couple/Twin/Group), refresh and take breakfast.After breakfast we visit meghla porjoton center. After lunch we take some rest and visit nilachal and Burmize market.back to hotel take dinner then over night stay at hotel.",
    trip: ["Dhaka", "Bandarban"],
    date: ["23 Mar 2021", "31 Mar 2021"],
    budget: const Budget(
      min: 80,
      max: 100,
      currency: 'USD',
    ),
    participants: users,
  ),
  Trip(
    id: "2",
    host: users[1],
    title: "To touch the cloud and hiking into konglak",
    description: "We will Start our Journey from Dhaka to Bandarban by Non Ac Bus. After arrived Bandarban check in at hotel (couple/Twin/Group), refresh and take breakfast.After breakfast we visit meghla porjoton center. After lunch we take some rest and visit nilachal and Burmize market.back to hotel take dinner then over night stay at hotel.",
    trip: ["Dhaka", "Sajek Valley"],
    date: ["23 Mar 2021", "31 Mar 2021"],
    budget: const Budget(
      min: 60,
      max: 80,
      currency: 'USD',
    ),
    participants: users,
  ),
  Trip(
    id: "3",
    host: users[2],
    title: "I want a travel partner to go with my trip to Bichanakandi",
    description: "We will Start our Journey from Dhaka to Bandarban by Non Ac Bus. After arrived Bandarban check in at hotel (couple/Twin/Group), refresh and take breakfast.After breakfast we visit meghla porjoton center. After lunch we take some rest and visit nilachal and Burmize market.back to hotel take dinner then over night stay at hotel.",
    trip: ["Dhaka", "Bichanakandi"],
    date: ["23 Mar 2021", "31 Mar 2021"],
    budget: const Budget(
      min: 80,
      max: 100,
      currency: 'USD',
    ),
    participants: users,
  ),
];

final travelStories = [
  const TravelStory(
    id: "1",
    cover: Constants.largePicture1,
    title: "Unpredictable tour of cox's bazar with best friends!",
    description: "We will Start our Journey from Dhaka to Bandarban by Non Ac Bus. After arrived Bandarban check in at hotel (couple/Twin/Group), refresh and take breakfast.After breakfast we visit meghla porjoton center. After lunch we take some rest and visit nilachal and Burmize market.back to hotel take dinner then over night stay at hotel.",
    trip: ["Dhaka", "Cox's Bazar"],
    createdAt: "12 Sep 2021",
    reactions: Reactions(
      like: 136,
      amazed: 32,
      excited: 324,
      support: 12,
    ),
  ),
  const TravelStory(
    id: "2",
    cover: Constants.largePicture2,
    title: "Unpredictable tour of cox's bazar with best friends!",
    description: "We will Start our Journey from Dhaka to Bandarban by Non Ac Bus. After arrived Bandarban check in at hotel (couple/Twin/Group), refresh and take breakfast.After breakfast we visit meghla porjoton center. After lunch we take some rest and visit nilachal and Burmize market.back to hotel take dinner then over night stay at hotel.",
    trip: ["Dhaka", "Cox's Bazar"],
    createdAt: "12 Sep 2021",
    reactions: Reactions(
      like: 136,
      amazed: 32,
      excited: 324,
      support: 12,
    ),
  ),
  const TravelStory(
    id: "3",
    cover: Constants.largePicture3,
    title: "Unpredictable tour of cox's bazar with best friends!",
    description: "We will Start our Journey from Dhaka to Bandarban by Non Ac Bus. After arrived Bandarban check in at hotel (couple/Twin/Group), refresh and take breakfast.After breakfast we visit meghla porjoton center. After lunch we take some rest and visit nilachal and Burmize market.back to hotel take dinner then over night stay at hotel.",
    trip: ["Dhaka", "Cox's Bazar"],
    createdAt: "12 Sep 2021",
    reactions: Reactions(
      like: 136,
      amazed: 32,
      excited: 324,
      support: 12,
    ),
  )
];

final users = [
  const User(
    id: "1",
    name: "John Doe",
    image: Constants.userPicture1,
    address: "Bandarban",
    type: "guide",
    rating: Rating(
      guide: 3.0,
    ),
  ),
  const User(
    id: "2",
    name: "Trixy Jane",
    image: Constants.userPicture2,
    address: "Bandarban",
    type: "guide",
    rating: Rating(
      guide: 3.0,
    ),
  ),
  const User(
    id: "3",
    name: "Marry Lisa",
    image: Constants.userPicture3,
    address: "Bandarban",
    type: "guide",
    rating: Rating(
      guide: 3.0,
    ),
  )
];

final accommodations = [
  const Accommodation(id: "1", title: "Siyam Didir Cottage", location: "Bandarban", owner: "Shafiur", image: Constants.largePicture1, rating: 4),
  const Accommodation(id: "2", title: "Zoom Restaurang", location: "Kaptai Lake", owner: "Rana", image: Constants.largePicture2, rating: 5),
  const Accommodation(id: "3", title: "New palace", location: "Rangamati", owner: "Piash", image: Constants.largePicture3, rating: 3)
];
