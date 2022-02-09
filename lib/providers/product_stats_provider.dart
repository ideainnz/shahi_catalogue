import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_stats.dart';

class ProductStatsProvider with ChangeNotifier{
  // BALLAY BALLAY
  static final List<ProductStats> bbNamakParayStats = [
    ProductStats(
        1, 'Namak Paray', '12 pkts/pp bag', '1.44', '1.61', '9 x 5.3 + 3.3'),
  ];

  static final List<ProductStats> bbDalMothStats = [
    ProductStats(1, 'Dal Moth\nRs-20', '12 pkts/box', '4.61', '4.84', '8.1 x 6.9 x 5.0'),
    ProductStats(2, 'Dal Moth\nRs-10', '12 pkts/box', '5.81', '7.44', '6.3 x 6 x 4.5'),
    ProductStats(3, 'Dal Moth\nRs-5', '12 pkts/pp bag', '1.44', '1.60', '9 x 5.3 + 3.3'),
  ];

  static final List<ProductStats> bbDalChanaStats = [
    ProductStats(1, 'Dal Chana\nRs-20', '12 pkts/box', '4.61', '4.84', '8.1 x 6.9 x 5.0'),
    ProductStats(2, 'Dal Chana\nRs-10', '12 pkts/box', '5.76', '8.01', '6.3 x 6 x 4.5'),
    ProductStats(3, 'Dal Chana\nRs-5', '12 pkts/pp bag', '1.44', '1.60', '9 x 5.3 + 3.3'),
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
  ];

  // SHAHI NIMCO
  static final List<ProductStats> nimcoSaltedChipsStats = [
    ProductStats(1, 'Salted Chips', '36 pkts/carton', '4.5', '5.6', '20 x 14.25 x 9.4in'),
    ProductStats(2, 'Salted Chips\nRs-20', '24 pkts/box', '6.05', '9.73', '8.25 x 7 x 5.3in'),
  ];

  static final List<ProductStats> nimcoSavoryMixStats = [
    ProductStats(1, 'Savory Mix', '36 pkts/carton', '5.76', '6.86', '20 x 14.25 x 9.4in'),
  ];

  static final List<ProductStats> nimcoMunchyMixStats = [
    ProductStats(1, 'Munchy Mix', '36 pkts/carton', '7.2', '8.30', '20 x 14.25 x 9.4in'),
  ];

  static final List<ProductStats> nimcoDalMothStats = [
    ProductStats(1, 'Dal Moth\nRs-100', '36 pkts/carton', '6.30', '7.36', '20 x 14.25 x 9.4in'),
    ProductStats(2, 'Dal Moth\nRs-50', '24 pkts/box', '1.80', '2.29', '8.25 x 7 x 5.3in'),
  ];

  static final List<ProductStats> nimcoDalMoongStats = [
    ProductStats(1, 'Dal Moong\nLarge', '36 pkts/carton', '5.40', '6.50', '20 x 14.25 x 9.4in'),
    ProductStats(2, 'Dal Moong\nRs-50', '24 pkts/carton', '1.44', '1.93', '11.5 x 11.25 x 8.2in'),
    ProductStats(3, 'Dal Moong\nRs-20', '24 pkts/box', '5.40', '9.15', '8.25 x 7 x 5.3in'),
  ];

  static final List<ProductStats> nimcoDalChanaStats = [
    ProductStats(1, 'Dal Chana\nRs-100', '36 pkts/carton', '6.48', '7.58', '20 x 14.25 x 9.4in'),
    ProductStats(2, 'Dal Chana\nRs-50', '24 pkts/carton', '1.80', '2.29', '11.5 x 11.25 x 8.2in'),
  ];

  static final List<ProductStats> nimcoChilliChipsStats = [
    ProductStats(1, 'Chilli Chips\nRs-100', '36 pkts/carton', '4.50', '5.57', '20 x 14.25 x 9.4in'),
    ProductStats(2, 'Chilli Chips\nRs-50', '24 pkts/carton', '1.56', '2.05', '11.5 x 11.25 x 8.2in'),
    ProductStats(3, 'Chilli Chips\nRs-20', '24 pkts/box', '6.05', '9.80', '8.25 x 7 x 5.3in'),
  ];

  static final List<ProductStats> nimcoBlackPepperChipsStats = [
    ProductStats(1, 'Black Pepper\nChips', '36 pkts/carton', '4.50', '5.60', '20 x 14.25 x 9.4in'),
    ProductStats(2, 'Black Pepper\nRs-20', '24 pkts/box', '6.05', '9.73', '8.25 x 7 x 5.3in'),
  ];

  static final List<ProductStats> nimcoChewraStats = [
    ProductStats(1, 'Chewra', '36 pkts/carton', '7.20', '8.32', '20 x 14.25 x 9.4in'),
  ];

  static final List<ProductStats> nimcoBoondiStats = [
    ProductStats(1, 'Boondi', '36 pkts/carton', '7.20', '8.38', '20 x 14.25 x 9.4in'),
  ];

  static final List<ProductStats> nimcoPapdiStats = [
    ProductStats(1, 'Papdi', '36 pkts/carton', '5.40', '6.50', '20 x 14.25 x 9.4in'),
  ];

  static final List<ProductStats> nimcoRoyalMixStats = [
    ProductStats(1, 'Royal Mix\nRs-50', '24 pkts/carton', '1.68', '2.17', '11.5 x 11.25 x 8.2in'),
    ProductStats(2, 'Royal Mix\nRs-20', '24 pkts/box', '6.48', '10.16', '8.25 x 7 x 5.3in'),
  ];

  // SNACKS
  static final List<ProductStats> kinkornCheeseStats = [
    ProductStats(1, 'Kinkorn', '12 pkts/pp bag', '1.08', '1.39', '14 x 16'),
  ];

  static final List<ProductStats> kinkornSpicyStats = [
    ProductStats(1, 'Kinkorn', '12 pkts/pp bag', '1.08', '1.39', '14 x 16'),
  ];

  static final List<ProductStats> gollumGolStats = [
    ProductStats(1, 'Gollum Gol', '12 pkts/pp bag', '0.50', '0.68', '9.5 x 17'),
  ];

  static final List<ProductStats> dhabayKiDaalStats = [
    ProductStats(1, 'Dhabay Ki Daal', '12 pkts/pp bag', '1.30', '1.49', '17 x 31'),
  ];

  static final List<ProductStats> champStats = [
    ProductStats(1, 'Popstar Champ', '12 pkts/pp bag', '0.94', '1.27', '23 x 34'),
  ];

  static final List<ProductStats> fryOSpicyStats = [
    ProductStats(1, 'Fry-O S&S\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O S&S\nRs-20', '24 pkts/carton', '0.50', '1.18', '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> fryOSAndSStats = [
    ProductStats(1, 'Fry-O S&S\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O S&S\nRs-20', '24 pkts/carton', '0.50', '1.18', '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> fryOSaltedStats = [
    ProductStats(1, 'Fry-O S&S\nRs-10', '12 pkts/pp bag', '0.72', '0.96', '23 x 34'),
    ProductStats(2, 'Fry-O S&S\nRs-20', '24 pkts/carton', '0.50', '1.18', '14 x 13 x 9.5'),
  ];

  static final List<ProductStats> pomoBitesStats = [
    ProductStats(1, 'Pomo Bites', '12 pkts/pp bag', '1.44', '1.72', '23.5 x 40'),
  ];

  static final List<ProductStats> pattiTimeStats = [
    ProductStats(1, 'Patti Time', '12 pkts/pp bag', '1.44', '1.63', '17 x 35'),
  ];

  static final List<ProductStats> mangoBuntysStats = [
    ProductStats(1, 'Mango Buntys', '12 pkts/pp bag', '1.44', '1.72', '23.5 x 40'),
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
    ProductStats(1, 'Popstar Samosa', '12 pkts/pp bag', '0.97', '1.29', '13 x 20'),
  ];

  static final List<ProductStats> popstarChatpataChickenStats = [
    ProductStats(1, 'Popstar Chicken\nRs-5', '12 pkts/pp bag', '0.58', '0.79', '13 x 15'),
    ProductStats(2, 'Popstar Chicken\nRs-10', '12 pkts/pp bag', '1.30', '1.57', '14.5 x 18'),
  ];

  static final List<ProductStats> popstarChickenPizzaStats = [
    ProductStats(1, 'Popstar Pizza', '12 pkts/pp bag', '1.15', '1.43', '14 x 17'),
  ];

  // MOUTH FRESHENER
  static final List<ProductStats> aasPaasChocolateStats = [
    ProductStats(1, 'AasPass\nRs-5', '24 x 24', '6.34', '7.97', '14.5 x 13.75 x 10.75in'),
    ProductStats(2, 'AasPass\nRs-2', '48 x 12 x 12', '27.65', '34.32', '24.75 x 19.5 x 17.75in'),
  ];

  static final List<ProductStats> shahiMevaChocolateStats = [
    ProductStats(1, 'Shahi Meva\nChocolate', '24 x 24', '4.03', '5.60', '14.5 x 13.75 x 10.75in'),
  ];

  static final List<ProductStats> shahiSupariClassicStats = [
    ProductStats(1, 'Shahi Supari\nClassic', '24 x 12 x 12', '8.64', '13.94', '24 x 18 x 16.5in'),
  ];

  static final List<ProductStats> shahiDeewanStats = [
    ProductStats(1, 'Shahi Deewan', '24 x 24', '2.30', '3.58', '12.5 x 9.75 x 12in'),
  ];

  static final List<ProductStats> shahiDeluxeLiteStats = [
    ProductStats(1, 'Shahi Deluxe\nLite', '48 x 12 x 12', '17.28', '23.44', '24 x 18 x 16.5in'),
  ];

  static final List<ProductStats> shahiDeluxeStats = [
    ProductStats(1, 'Shahi Deluxe', '50 x 12 x 12', '21.60', '28.34', '24.75 x 19.5 x 17.75in'),
  ];

  static final List<ProductStats> shahiElaichiStats = [
    ProductStats(1, 'Shahi Elaichi\nRs-2', '48 x 12 x 12', '16.58', '23.09', '24 x 18 x 16.5in'),
    ProductStats(1, 'Shahi Elaichi\nRs-5', '53 x 24', '4.83', '6.89', '15.25 x 14 x 10.9in'),
  ];

  static final List<ProductStats> shahiKalonjiStats = [
    ProductStats(1, 'Shahi Kalonji', '24 x 12', '0.86', '1.50', '12.25 x 11.5 x 5in'),
    ProductStats(2, 'Shahi Kalonji', '12 x 12', '0.43', '0.85', '10.75 x 8.5 x 5in'),
  ];

  static final List<ProductStats> aasPaasMeethaPanMasalaStats = [
    ProductStats(1, 'AasPass', '24 x 24', '5.76', '7.40', '14.5 x 13.75 x 10.75in'),
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
    ProductStats(1, 'Aas Paas\nSweet Sonf', '24 x 24', '8.64', '10.28', '14.5 x 13.75 x 10.75in'),
  ];

}
