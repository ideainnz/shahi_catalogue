import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_stats.dart';

class ProductStatsProvider with ChangeNotifier {
  // BALLAY BALLAY
  static final List<ProductStats> bbNamakParayStats = [
    ProductStats(
        1, 'Namak Paray\nRs-5', '12 pkts/pp bag', '1.44', '1.61', '9 x 5.3 + 3.3'),
  ];

  /*static final List<ProductStats> bbDalMothStats = [
    ProductStats(1, 'Dal Moth\nRs-20', '12 pkts/box', '4.61', '4.84', '8.1 x 6.9 x 5.0'),
    ProductStats(2, 'Dal Moth\nRs-10', '12 pkts/box', '5.81', '7.44', '6.3 x 6 x 4.5'),
    ProductStats(3, 'Dal Moth\nRs-5', '12 pkts/pp bag', '1.44', '1.60', '9 x 5.3 + 3.3'),
  ];

  static final List<ProductStats> bbDalChanaStats = [
    ProductStats(1, 'Dal Chaska\nRs-20', '12 pkts/box', '4.61', '4.84', '8.1 x 6.9 x 5.0'),
    ProductStats(2, 'Dal Chaska\nRs-10', '12 pkts/box', '5.76', '8.01', '6.3 x 6 x 4.5'),
    ProductStats(3, 'Dal Chaska\nRs-5', '12 pkts/pp bag', '1.44', '1.60', '9 x 5.3 + 3.3'),
  ];

  static final List<ProductStats> bbDSavoryMixStats = [
    ProductStats(1, 'Savory Mix\nRs-20', '12 pkts/box', '4.61', '4.84', '8.1 x 6.9 x 5.0'),
    ProductStats(2, 'Savory Mix\nRs-10', '12 pkts/box', '5.18', '7.44', '6.3 x 6 x 4.5'),
    ProductStats(3, 'Savory Mix\nRs-5', '12 pkts/pp bag', '1.44', '1.60', '9 x 5.3 + 3.3'),
  ];

  static final List<ProductStats> bbDalMoongStats = [
    ProductStats(
        1, 'Dal Moong\nRs-20', '12 pkts/box', '7.20', '9.60', '6.3 x 6 x 5.2'),
  ];

  static final List<ProductStats> bbSaltedPeanutsStats = [
    ProductStats(
        1, 'Salted Peanuts\nRs-20', '12 pkts/box', '5.18', '7.71', '6.3 x 6 x 5.2'),
  ];

  static final List<ProductStats> bbMunchyMixStats = [
    ProductStats(
        1, 'Munchy Mix\nRs-10', '12 pkts/box', '4.46', '6.72', '6.3 x 6 x 4.5'),
  ];*/

  static final List<ProductStats> bbDalMoongStats2 = [
    ProductStats(1, 'Dal Moong\nRs-20', '12 Packet/Box\n24 Box/Carton', '5.76',
        '8.01', '24.9 x 13 x 14'),
    ProductStats(2, 'Dal Moong\nRs-10', '24 Packet/Box\n24 Box/Carton', '6.34',
        '8.70', '24.9 x 13 x 14'),
  ];

  static final List<ProductStats> bbChilliChipsStats = [
    ProductStats(1, 'Chilli Chips\nRs-10', '24 Packet/Box\n24 Box/Carton',
        '4.61', '6.50', '26.4 x 18.5 x 14.25'),
  ];

  static final List<ProductStats> bbDalChaskaStats = [
    ProductStats(1, 'Dal Chaska\nRs-20', '12 Packet/Box\n12 Box/Carton', '3.17',
        '5.10', '16.75 x 14.6 x 15.6'),
    ProductStats(2, 'Dal Chaska\nRs-10', '24 Packet/Box\n24 Box/Carton', '6.91',
        '10.44', '26.4 x 18.5 x 14.25'),
  ];

  static final List<ProductStats> bbDalMothStats2 = [
    ProductStats(1, 'Dal Moth\nRs-20', '12 Packet/Box\n12 Box/Carton', '6.91',
        '8.73', '26.4 x 18.5 x 14.25'),
    ProductStats(2, 'Dal Moth\nRs-10', '24 Packet/Box\n24 Box/Carton', '3.17',
        '5.10', '16.75 x 14.6 x 15.6'),
  ];

  static final List<ProductStats> bbMunchyMixStats2 = [
    ProductStats(1, 'Munchy Mix\nRs-20', '12 pkts/box\n12 Box/Carton', '0.00',
        '0.00', '16.75 x 14.6 x 15.6'),
    ProductStats(2, 'Munchy Mix\nRs-10', '24 pkts/box\n24 Box/Carton', '5.76',
        '7.58', '26.4 x 18.5 x 14.25'),
  ];

  static final List<ProductStats> bbSaltedPeanutsStats2 = [
    ProductStats(1, 'Salted Peanuts\nRs-20', '12 pkts/box\n24 Box/Carton',
        '2.88', '5.23', '24.9 x 13 x 14'),
  ];

  static final List<ProductStats> bbSavoryMixStats2 = [
    ProductStats(1, 'Savory Mix\nRs-20', '12 pkts/box\n12 Box/Carton', '3.17',
        '5.10', '16.75 x 14.6 x 15.6'),
    ProductStats(2, 'Savory Mix\nRs-10', '24 pkts/box\n24 Box/Carton', '6.91',
        '8.73', '26.4 x 18.5 x 14.25'),
  ];

  static final List<ProductStats> bbDalPapdiStats2 = [
    ProductStats(1, 'Dal Papdi\nRs-20', '12 pkts/box\n12 Box/Carton', '3.17',
        '5.10', '16.75 x 14.6 x 15.6'),
    ProductStats(2, 'Dal Papdi\nRs-10', '24 pkts/box\n24 Box/Carton', '6.91',
        '8.73', '26.4 x 18.5 x 14.25'),
  ];

  // SHAHI NIMCO
  static final List<ProductStats> nimcoSaltedChipsStats = [
    ProductStats(1, 'Salted Chips\nRs-30', '12 Packet/Box\n18 Box/Carton',
        '7.56', '10.05', '21.5 x 17 x 15.4'),
    ProductStats(
        2, 'Salted Chips', '36 Box/Carton', '4.14', '5.09', '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoSavoryMixStats = [
    ProductStats(
        1, 'Savory Mix', '36 Box/Carton', '4.86', '5.78', '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoMunchyMixStats = [
    ProductStats(1, 'Munchy Mix', '36 Box/Carton', '4.86', '5.76',
        '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoDalMothStats = [
    ProductStats(1, 'Dal Moth\nRs-50', '24 Box/Carton', '1.44', '1.90',
        '11.5 x 11.25 x 8.2'),
    ProductStats(
        2, 'Dal Moth', '36 Box/Carton', '4.86', '5.78', '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoDalMoongStats = [
    ProductStats(1, 'Dal Moong\nRs-50', '24 Box/Carton', '1.32', '1.78',
        '11.5 x 11.25 x 8.2'),
    ProductStats(2, 'Dal Moong\nRs-30', '12 Packet/Box\n18 Box/Carton', '7.56',
        '10.25', '21.5 x 17 x 15.4'),
    ProductStats(
        3, 'Dal Moong', '36 Box/Carton', '4.86', '5.76', '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoDalChanaStats = [
    ProductStats(1, 'Dal Chana', '36 Box/Carton', '4.86', '5.78',
        '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoChilliChipsStats = [
    ProductStats(1, 'Chilli Chips\nRs-50', '24 Box/Carton', '1.32', '1.78',
        '11.5 x 11.25 x 8.2'),
    ProductStats(2, 'Chilli Chips\nRs-30', '12 Packet/Box\n18 Box/Carton',
        '7.56', '10.36', '21.5 x 17 x 15.4'),
    ProductStats(
        3, 'Chilli Chips', '36 Box/Carton', '4.14', '5.09', '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoBlackPepperChipsStats = [
    ProductStats(1, 'Black Pepper\nRs-30', '12 Packet/Box\n18 Box/Carton',
        '7.56', '10.05', '21.5 x 17 x 15.4'),
    ProductStats(
        2, 'Black Pepper', '36 Box/Carton', '4.14', '5.04', '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoChewraStats = [
    ProductStats(1, 'Chewra', '36 Box/Carton', '3.96', '4.86',
        '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoBoondiStats = [
    ProductStats(1, 'Boondi', '36 Box/Carton', '4.86', '5.89',
        '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoPapdiStats = [
    ProductStats(1, 'Papdi', '36 Box/Carton', '5.40', '6.35',
        '20 x 14.25 x 9.4'),
  ];

  static final List<ProductStats> nimcoRoyalMixStats = [
    ProductStats(1, 'Royal Mix\nRs-50', '24 Box/carton', '1.44', '1.90',
        '11.5 x 11.25 x 8.2'),
    ProductStats(2, 'Royal Mix\nRs-30', '12 Packet/Box\n18 Box/Carton', '7.13', '9.85',
        '21.5 x 17 x 15.4'),
  ];

  static final List<ProductStats> nimcoDahiPhulkiStats = [
    ProductStats(1, 'Dahi Phulki', 'N/A', 'N/A', 'N/A', 'N/A'),
  ];

  static final List<ProductStats> nimcoKatthaMeethaMixStats = [
    ProductStats(1, 'Khatta Meetha Mix', '24 Box/Carton', '3.48', '3.91', '15.75 x 12.25 x 8.2'),
  ];

  // SNACKS
  /*static final List<ProductStats> kinkornCheeseStats = [
    ProductStats(1, 'Kinkorn\nRs-10', '12 pkts/pp bag', '1.08', '1.39', '14 x 16'),
  ];

  static final List<ProductStats> kinkornSpicyStats = [
    ProductStats(1, 'Kinkorn\nRs-10', '12 pkts/pp bag', '1.08', '1.39', '14 x 16'),
  ];

  static final List<ProductStats> gollumGolStats = [
    ProductStats(1, 'Gollum Gol\nRs-5', '12 pkts/pp bag', '0.50', '0.68', '9.5 x 17'),
  ];

  static final List<ProductStats> dhabayKiDaalStats = [
    ProductStats(1, 'Dhabay Ki Daal', '12 pkts/pp bag', '1.30', '1.49', '17 x 31'),
  ];

  static final List<ProductStats> champStats = [
    ProductStats(1, 'Popstar Champ\nRs-10', '12 pkts/pp bag', '0.94', '1.27', '23 x 34'),
  ];

  static final List<ProductStats> fryOSpicyStats = [
    ProductStats(1, 'Fry-O Spicy\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O Spicy\nRs-20', '24 pkts/carton', '0.50', '1.18', '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> fryOSAndSStats = [
    ProductStats(1, 'Fry-O S&S\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O S&S\nRs-20', '24 pkts/carton', '0.50', '1.18', '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> fryOSaltedStats = [
    ProductStats(1, 'Fry-O Salted\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O Salted\nRs-20', '24 pkts/carton', '0.50', '1.18', '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> pomoBitesStats = [
    ProductStats(1, 'Pomo Bites\nRs-10', '12 pkts/pp bag', '1.44', '1.72', '23.5 x 40'),
  ];

  static final List<ProductStats> pattiTimeStats = [
    ProductStats(1, 'Patti Time\nRs-10', '12 pkts/pp bag', '1.44', '1.63', '17 x 35'),
  ];

  static final List<ProductStats> mangoBuntysStats = [
    ProductStats(1, 'Mango Buntys\nRs-10', '12 pkts/pp bag', '1.44', '1.72', '23.5 x 40'),
  ];

  static final List<ProductStats> wheatOOriginalStats = [
    ProductStats(1, 'Wheat-O Original\nRs-5', '12 pkts/pp bag', '0.65', '0.84', '12.5 x 14'),
    ProductStats(2, 'Wheat-O Original\nRs-10', '12 pkts/pp bag', '1.58', '1.86', '14.5 x 18'),
  ];

  static final List<ProductStats> wheatOKarariyanStats = [
    ProductStats(1, 'Wheat-O Karariyan\nRs-5', '12 pkts/pp bag', '0.65', '0.84', '12.5 x 14'),
    ProductStats(2, 'Wheat-O Karariyan\nRs-10', '12 pkts/pp bag', '1.58', '1.86', '14.5 x 18'),
  ];

  static final List<ProductStats> popstarClassicCheeseStats = [
    ProductStats(1, 'Popstar Cheese\nRs-5', '12 pkts/pp bag', '0.58', '0.79', '13 x 15'),
    ProductStats(2, 'Popstar Cheese\nRs-10', '12 pkts/pp bag', '1.15', '1.43', '14.5 x 18'),
  ];

  static final List<ProductStats> popstarChickenSamosaStats = [
    ProductStats(1, 'Popstar Samosa\nRs-5', '12 pkts/pp bag', '0.97', '1.29', '13 x 20'),
  ];

  static final List<ProductStats> popstarChatpataChickenStats = [
    ProductStats(1, 'Popstar Chicken\nRs-5', '12 pkts/pp bag', '0.58', '0.79', '13 x 15'),
    ProductStats(2, 'Popstar Chicken\nRs-10', '12 pkts/pp bag', '1.30', '1.57', '14.5 x 18'),
  ];

  static final List<ProductStats> popstarChickenPizzaStats = [
    ProductStats(1, 'Popstar Pizza\nRs-10', '12 pkts/pp bag', '1.15', '1.43', '14 x 17'),
  ];*/

  static final List<ProductStats> popstarChatpataChickenStats2 = [
    ProductStats(1, 'Popstar Chicken\nRs-10', '12 pkts/pp bag', '1.30', '1.57',
        '14.5 x 18'),
  ];

  static final List<ProductStats> popstarChickenSamosaStats2 = [
    ProductStats(
        1, 'Popstar Samosa\nRs-5', '12 pkts/pp bag', '0.97', '1.29', '13 x 20'),
  ];

  static final List<ProductStats> fryOSAndSStats2 = [
    ProductStats(
        1, 'Fry-O S&S\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O S&S\nRs-20', '24 pkts/carton', '0.50', '1.18',
        '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> fryOSaltedStats2 = [
    ProductStats(
        1, 'Fry-O Salted\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O Salted\nRs-20', '24 pkts/carton', '0.50', '1.18',
        '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> fryOSpicyStats2 = [
    ProductStats(
        1, 'Fry-O Spicy\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O Spicy\nRs-20', '24 pkts/carton', '0.50', '1.18',
        '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> kinkornSpicyStats2 = [
    ProductStats(
        1, 'Kinkorn\nRs-10', '12 pkts/pp bag', '1.08', '1.39', '14 x 16'),
  ];

  static final List<ProductStats> kinkornCheeseStats2 = [
    ProductStats(
        1, 'Kinkorn\nRs-10', '12 pkts/pp bag', '1.08', '1.39', '14 x 16'),
  ];

  static final List<ProductStats> mangoBuntysStats2 = [
    ProductStats(1, 'Mango Buntys\nRs-10', '12 pkts/pp bag', '1.44', '1.72',
        '23.5 x 40'),
  ];

  static final List<ProductStats> pattiTimeStats2 = [
    ProductStats(
        1, 'Patti Time\nRs-10', '12 pkts/pp bag', '1.44', '1.63', '17 x 35'),
  ];

  static final List<ProductStats> pomoBitesStats2 = [
    ProductStats(
        1, 'Pomo Bites\nRs-10', '12 pkts/pp bag', '1.44', '1.72', '23.5 x 40'),
  ];

  static final List<ProductStats> popstarClassicCheeseStats2 = [
    ProductStats(1, 'Popstar Cheese\nRs-20', 'N/A', 'N/A', 'N/A', 'N/A'),
    ProductStats(2, 'Popstar Cheese\nRs-10', '12 pkts/pp bag', '1.15', '1.43',
        '14.5 x 18'),
  ];

  static final List<ProductStats> popstarChickenPizzaStats2 = [
    ProductStats(
        1, 'Popstar Pizza\nRs-10', '12 pkts/pp bag', '1.15', '1.43', '14 x 17'),
  ];

  static final List<ProductStats> roccoStats = [
    ProductStats(1, 'Rocco\nRs-10', 'N/A', 'N/A', 'N/A', 'N/A'),
  ];

  static final List<ProductStats> wheatOKarariyanStats2 = [
    ProductStats(1, 'Wheat-O Karariyan\nRs-10', '12 pkts/pp bag', '1.58',
        '1.86', '14.5 x 18'),
  ];

  static final List<ProductStats> wheatOOriginalStats2 = [
    ProductStats(1, 'Wheat-O Original\nRs-10', '12 pkts/pp bag', '1.58', '1.86',
        '14.5 x 18'),
  ];

  static final List<ProductStats> fryOSAndSExportStats = [
    ProductStats(1, 'Fry-O S&S\nRs-', 'N/A', 'N/A', 'N/A', 'N/A'),
  ];

  // MOUTH FRESHENER
  /*static final List<ProductStats> aasPaasChocolateStats = [
    ProductStats(1, 'AasPass\nRs-5', '24 x 24', '6.34', '7.97', '14.5 x 13.75 x 10.75in'),
    ProductStats(2, 'AasPass\nRs-2', '48 x 12 x 12', '27.65', '34.32', '24.75 x 19.5 x 17.75in'),
  ];

  static final List<ProductStats> shahiMevaChocolateStats = [
    ProductStats(1, 'Shahi Meva\nChocolate Rs-5', '24 x 24', '4.03', '5.60', '14.5 x 13.75 x 10.75in'),
  ];

  static final List<ProductStats> shahiSupariClassicStats = [
    ProductStats(1, 'Shahi Supari\nClassic Rs-2.5', '24 x 12 x 12', '8.64', '13.94', '24 x 18 x 16.5in'),
  ];

  static final List<ProductStats> shahiDeewanStats = [
    ProductStats(1, 'Shahi Deewan\nRs-5', '24 x 24', '2.30', '3.58', '12.5 x 9.75 x 12in'),
  ];

  static final List<ProductStats> shahiDeluxeLiteStats = [
    ProductStats(1, 'Shahi Deluxe\nLite Rs-2.5', '48 x 12 x 12', '17.28', '23.44', '24 x 18 x 16.5in'),
  ];

  static final List<ProductStats> shahiDeluxeStats = [
    ProductStats(1, 'Shahi Deluxe\nRs-2.5', '50 x 12 x 12', '21.60', '28.34', '24.75 x 19.5 x 17.75in'),
  ];

  static final List<ProductStats> shahiElaichiStats = [
    ProductStats(1, 'Shahi Elaichi\nRs-2', '48 x 12 x 12', '16.58', '23.09', '24 x 18 x 16.5in'),
    ProductStats(2, 'Shahi Elaichi\nRs-5', '53 x 24', '4.83', '6.89', '15.25 x 14 x 10.9in'),
  ];

  static final List<ProductStats> shahiKalonjiStats = [
    ProductStats(1, 'Shahi Kalonji\nRs-2', '24 x 12', '0.86', '1.50', '12.25 x 11.5 x 5in'),
    ProductStats(2, 'Shahi Kalonji\nRs-5', '12 x 12', '0.43', '0.85', '10.75 x 8.5 x 5in'),
  ];

  static final List<ProductStats> aasPaasMeethaPanMasalaStats = [
    ProductStats(1, 'AasPass\nRs-5', '24 x 24', '5.76', '7.40', '14.5 x 13.75 x 10.75in'),
  ];

  static final List<ProductStats> shahiMevaStats = [
    ProductStats(1, 'Shahi Meva\nRs-2', '48 x 12 x 6', '12.10', '15.32', '20.5 x 12.5 x 17.75in'),
    ProductStats(2, 'Shahi Meva\nRs-5', '24 x 24', '4.61', '6.19', '14.5 x 13.75 x 10.75in'),
    ProductStats(3, 'Shahi Meva\nRs-10', '12 x 12', '2.45', '3.20', '12.5 x 11.75 x 7.45in'),
  ];

  static final List<ProductStats> shahiSupermintStats = [
    ProductStats(1, 'Shahi Supermint\nRs-2.5', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5in'),
    ProductStats(2, 'Shahi Supermint\nRs-5', '26 x 12 x 24', '4.99', '6.88', '18.5 x 12.5 x 11in'),
  ];

  static final List<ProductStats> aasPaasSweetSonf = [
    ProductStats(1, 'Aas Paas\nSweet Sonf Rs-5', '24 x 24', '8.64', '10.28', '14.5 x 13.75 x 10.75in'),
  ];*/

  static final List<ProductStats> aasPaasChocolateStats2 = [
    ProductStats(1, 'AasPass\nRs-5', '48 Packets/Box', '9.79', '11.48', '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> aasPaasMeethaPanMasalaStats2 = [
    ProductStats(1, 'AasPass\nRs-5', '48 Packets/Box', '9.79', '11.48', '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> aasPaasSweetSonf2 = [
    ProductStats(1, 'Aas Paas\nSweet Sonf Rs-5', '48 Packets/Box', '9.79', '11.48', '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> shahiMevaChocolateStats2 = [
    ProductStats(1, 'Shahi Meva\nChocolate Rs-5', '48 Packets/Box', '6.34', '8.03', '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> shahiDeewanStats2 = [
    ProductStats(1, 'Shahi Deewan\nRs-5', '24 Packets/Box', '2.02', '3.26', '12.5 x 9.75 x 12'),
  ];

  static final List<ProductStats> shahiDeluxeStats2 = [
    ProductStats(1, 'Shahi Deluxe\nRs-5', '48 Packets/Box', '4.61', '6.44', '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> shahiElaichiStats2 = [
    ProductStats(1, 'Shahi Elaichi\nRs-5', '48 Packets/Box', '3.86', '5.69',
        '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> shahiKalonjiStats2 = [
    ProductStats(1, 'Shahi Kalonji\nRs-5', '12 Packets/Box', '0.50', '0.90',
        '14.5 x 13.75 x 10.75'),
    ProductStats(2, 'Shahi Kalonji\nRs-5', '24 Packets/Box', '1.01', '1.63',
        '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> shahiMevaStats2 = [
    ProductStats(1, 'Shahi Meva\nRs-10', '12 Packets/Box', '1.87', '2.58',
        '12.5 x 11.75 x 7.45'),
    ProductStats(2, 'Shahi Meva\nRs-5', '48 Packets/Box', '6.34', '8.10',
        '14.5 x 13.75 x 10.75'),
  ];

  static final List<ProductStats> shahiSupermintStats2 = [
    ProductStats(1, 'Shahi Supermint\nRs-5', 'N/A', 'N/A', 'N/A', 'N/A'),
  ];

  // MOUTH FRESHENER JARS
  static final List<ProductStats> aasPaasChocolateJarStats = [
    ProductStats(1, 'AasPass', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> aasPaasMeethaPanMasalaJarStats = [
    ProductStats(1, 'AasPass', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> aasPaasSweetSonfJarStats = [
    ProductStats(1, 'Aas Paas\nSweet Sonf', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiMevaChocolateJarStats = [
    ProductStats(1, 'Shahi Meva\nChocolate', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiDeewanJarStats = [
    ProductStats(1, 'Shahi Deewan', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiDeluxeJarStats = [
    ProductStats(1, 'Shahi Deluxe', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiElaichiJarStats = [
    ProductStats(1, 'Shahi Elaichi', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiKalonjiJarStats = [
    ProductStats(2, 'Shahi Kalonji', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiMevaJarStats = [
    ProductStats(1, 'Shahi Meva', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiSupermintJarStats = [
    ProductStats(1, 'Shahi Supermint', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];

  static final List<ProductStats> shahiRangaRangJarStats = [
    ProductStats(1, 'Shahi Ranga Rang', '48 Jars/Box', 'N/A', 'N/A', '13.75 x 9.7 x 10.75'),
  ];
}
