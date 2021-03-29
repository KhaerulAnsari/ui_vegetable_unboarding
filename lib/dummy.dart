import 'package:ui_vegetable_unboarding/models/popular_model.dart';
import 'package:ui_vegetable_unboarding/models/recomended_model.dart';

List data = [
  {
    'subtitle': 'Do you want to cook vegetables today?\nHere you can find it',
    'imageUrl': 'assets/sliderr1.png',
  },
  {
    'subtitle': 'Would you like to eat fruit?\nHere you can get it',
    'imageUrl': 'assets/sliderr2.png',
  },
  {
    'subtitle': 'Do you want to cook sea food today?\nHere you can find it',
    'imageUrl': 'assets/sliderr3.png',
  }
];

var dataPopular = [
  PopularModel(
    title: 'Mustard',
    imageUrl: 'assets/popular1.png',
  ),
  PopularModel(
    title: 'Brocoli',
    imageUrl: 'assets/popular2.png',
  ),
  PopularModel(
    title: 'Lemon',
    imageUrl: 'assets/popular3.png',
  ),
  PopularModel(
    title: 'Grape',
    imageUrl: 'assets/popular4.png',
  ),
  PopularModel(
    title: 'Shells',
    imageUrl: 'assets/popular5.png',
  ),
];

var dataRecomended = [
  RecomendedModel(
    imageUrl: 'assets/recomended1.png',
    title: 'Ceri Fruits',
    balance: 200000,
    productModel: '/Box',
    location: 'jln.Jendrel Sudirman No.1\nMakassar,Indonesia',
  ),
  RecomendedModel(
    imageUrl: 'assets/recomended2.png',
    title: 'Mix Vegetable',
    balance: 70000,
    productModel: '/Pack',
    location: 'Jln.Litjen Hertasning No.3\nBali,HongKong',
  ),
  RecomendedModel(
    imageUrl: 'assets/recomended3.png',
    title: 'Grilled shrimp',
    balance: 30000,
    productModel: '/Box',
    location: 'Jln.Pelita Raya No.5D\nBandung,Indonesia',
  ),
  RecomendedModel(
    imageUrl: 'assets/recomended4.png',
    title: 'Fresh Sea food',
    balance: 80000,
    productModel: '/Pack',
    location: 'Jln.Sultan Hasanuddin No.3\nSurabaya,New York',
  ),
  RecomendedModel(
    imageUrl: 'assets/recomended5.png',
    title: 'Mud crab',
    balance: 50000,
    productModel: '/Box',
    location: 'Jln.Besar Indah No.3\nMakassar,Indonesia',
  ),
  RecomendedModel(
    imageUrl: 'assets/recomended6.png',
    title: 'Fresh apples',
    balance: 150000,
    productModel: '/Pack',
    location: 'Jln.Maliboro Bloc3 No.7\nBogor,Kuala Lumpur',
  )
];
