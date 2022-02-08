import 'package:flutter/material.dart';
import 'package:shahi_catalogue/models/product_stats.dart';

class ProductStatsProvider with ChangeNotifier{
  // BALLAY BALLAY
  static final List<ProductStats> bbNamakParayStats = [
    ProductStats(
        1, 'Namak Paray', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> bbDalMothStats = [
    ProductStats(1, 'Large', '--------', '--------', '--------', '--------'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
    ProductStats(3, 'Small', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> bbDalChanaStats = [
    ProductStats(1, 'Large', '--------', '--------', '--------', '--------'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
    ProductStats(3, 'Small', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> bbDSavoryMixStats = [
    ProductStats(1, 'Large', '--------', '--------', '--------', '--------'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
    ProductStats(3, 'Small', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> bbDalMoongStats = [
    ProductStats(
        1, 'Dal Moong', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> bbSaltedPeanutsStats = [
    ProductStats(
        1, 'Salted Peanuts', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> bbMunchyMixStats = [
    ProductStats(
        1, 'Munchy Mix', '--------', '--------', '--------', '--------'),
  ];

  // SHAHI NIMCO
  static final List<ProductStats> nimcoSaltedChipsStats = [
    ProductStats(1, 'Salted Chips', '36Pkts/Ctn', '4.5', '5.6', '20*14.25*9.4in'),
    ProductStats(2, 'Salted Chips\nRs-20', '24Pkts/Box', '6.05', '9.73', '8.25*7*5.3in'),
  ];

  static final List<ProductStats> nimcoSavoryMixStats = [
    ProductStats(1, 'Savory Mix', '36Pkts/Ctn', '5.76', '6.86', '20*14.25*9.4in'),
  ];

  static final List<ProductStats> nimcoMunchyMixStats = [
    ProductStats(1, 'Munchy Mix', '36Pkts/Ctn', '7.2', '8.30', '20*14.25*9.4in'),
  ];

  static final List<ProductStats> nimcoDalMothStats = [
    ProductStats(1, 'Dal Moth\nRs-100', '36Pkts/Ctn', '6.30', '7.36', '20*14.25*9.4in'),
    ProductStats(2, 'Dal Moth\nRs-50', '24Pkts/Box', '1.80', '2.29', '8.25*7*5.3in'),
  ];

  static final List<ProductStats> nimcoDalMoongStats = [
    ProductStats(1, 'Dal Moong\nLarge', '36Pkts/Ctn', '5.40', '6.50', '20*14.25*9.4in'),
    ProductStats(2, 'Dal Moong\nRs-50', '24Pkts/Ctn', '1.44', '1.93', '11.5*11.25*8.2in'),
    ProductStats(3, 'Dal Moong\nRs-20', '24Pkts/Box', '5.40', '9.15', '8.25*7*5.3in'),
  ];

  static final List<ProductStats> nimcoDalChanaStats = [
    ProductStats(1, 'Dal Chana\nRs-100', '36Pkts/Ctn', '6.48', '7.58', '20*14.25*9.4in'),
    ProductStats(2, 'Dal Chana\nRs-50', '24Pkts/Ctn', '1.80', '2.29', '11.5*11.25*8.2in'),
  ];

  static final List<ProductStats> nimcoChilliChipsStats = [
    ProductStats(1, 'Chilli Chips\nRs-100', '36Pkts/Ctn', '4.50', '5.57', '20*14.25*9.4in'),
    ProductStats(2, 'Chilli Chips\nRs-50', '24Pkts/Ctn', '1.56', '2.05', '11.5*11.25*8.2in'),
    ProductStats(3, 'Chilli Chips\nRs-20', '24Pkts/Box', '6.05', '9.80', '8.25*7*5.3in'),
  ];

  static final List<ProductStats> nimcoBlackPepperChipsStats = [
    ProductStats(1, 'Black Pepper\nChips', '36Pkts/Ctn', '4.50', '5.60', '20*14.25*9.4in'),
    ProductStats(2, 'Black Pepper\nRs-20', '24Pkts/Box', '6.05', '9.73', '8.25*7*5.3in'),
  ];

  static final List<ProductStats> nimcoChewraStats = [
    ProductStats(1, 'Chewra', '36Pkts/Ctn', '7.20', '8.32', '20*14.25*9.4in'),
  ];

  static final List<ProductStats> nimcoBoondiStats = [
    ProductStats(1, 'Boondi', '36Pkts/Ctn', '7.20', '8.38', '20*14.25*9.4in'),
  ];

  static final List<ProductStats> nimcoPapdiStats = [
    ProductStats(1, 'Papdi', '36Pkts/Ctn', '5.40', '6.50', '20*14.25*9.4in'),
  ];

  static final List<ProductStats> nimcoRoyalMixStats = [
    ProductStats(1, 'Royal Mix\nRs-50', '24Pkts/Ctn', '1.68', '2.17', '11.5*11.25*8.2in'),
    ProductStats(2, 'Royal Mix\nRs-20', '24Pkts/Box', '6.48', '10.16', '8.25*7*5.3in'),
  ];

  // SNACKS
  static final List<ProductStats> kinkornCheeseStats = [
    ProductStats(1, 'Kinkorn', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> kinkornSpicyStats = [
    ProductStats(1, 'Kinkorn', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> gollumGolStats = [
    ProductStats(1, 'Kinkorn', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> dhabayKiDaalStats = [
    ProductStats(1, 'Dhabay Ki Daal', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> champStats = [
    ProductStats(1, 'Champ', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> fryOSpicyStats = [
    ProductStats(1, 'Fry-O Spicy', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> fryOSAndSStats = [
    ProductStats(1, 'Fry-O S&S', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> fryOSaltedStats = [
    ProductStats(1, 'Fry-O Salted', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> pomoBitesStats = [
    ProductStats(1, 'Pomo Bites', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> pattiTimeStats = [
    ProductStats(1, 'Patti Time', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> mangoBuntysStats = [
    ProductStats(1, 'Mango Buntys', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> wheatOOriginalStats = [
    ProductStats(1, 'Wheat-O\nOriginal', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> wheatOKarariyanStats = [
    ProductStats(1, 'Wheat-O\nKarariyan', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> popstarClassicCheeseStats = [
    ProductStats(1, 'Popstar Classic\nCheese', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> popstarChickenSamosaStats = [
    ProductStats(1, 'Popstar Chicken\nSamosa', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> popstarChatpataChickenStats = [
    ProductStats(1, 'Popstar Chatpata\nChicken', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  static final List<ProductStats> popstarChickenPizzaStats = [
    ProductStats(1, 'Popstar Chicken\nPizza', '48 x 12 x 12', '21.42', '27.68', '24.5 x 19 x 17.5'),
  ];

  // MOUTH FRESHENER
  static final List<ProductStats> aasPaasChocolateStats = [
    ProductStats(1, 'AasPass\nRs-5', '24x24', '6.34', '7.97', '14.5*13.75*10.75in'),
    ProductStats(2, 'AasPass\nRs-2', '48*12*12', '27.65', '34.32', '24.75*19.5*17.75in'),
  ];

  static final List<ProductStats> shahiMevaChocolateStats = [
    ProductStats(1, 'Shahi Meva\nChocolate', '24*24', '4.03', '5.60', '14.5*13.75*10.75in'),
  ];

  static final List<ProductStats> shahiSupariClassicStats = [
    ProductStats(1, 'Shahi Supari\nClassic', '24x12x12', '8.64', '13.94', '24*18*16.5in'),
  ];

  static final List<ProductStats> shahiDeewanStats = [
    ProductStats(1, 'Shahi Deewan', '24*24', '2.30', '3.58', '12.5*9.75*12in'),
  ];

  static final List<ProductStats> shahiDeluxeLiteStats = [
    ProductStats(1, 'Shahi Deluxe\nLite', '48x12x12', '17.28', '23.44', '24*18*16.5in'),
  ];

  static final List<ProductStats> shahiDeluxeStats = [
    ProductStats(1, 'Shahi Deluxe', '50*12*12', '21.60', '28.34', '24.75*19.5*17.75in'),
  ];

  static final List<ProductStats> shahiElaichiStats = [
    ProductStats(1, 'Shahi Elaichi\nRs-2', '48*12*12', '16.58', '23.09', '24*18*16.5in'),
    ProductStats(1, 'Shahi Elaichi\nRs-5', '53*24', '4.83', '6.89', '15.25*14*10.9in'),
  ];

  static final List<ProductStats> shahiKalonjiStats = [
    ProductStats(1, 'Shahi Kalonji', '24*12', '0.86', '1.50', '12.25*11.5*5in'),
    ProductStats(2, 'Shahi Kalonji', '12*12', '0.43', '0.85', '10.75*8.5*5in'),
  ];

  static final List<ProductStats> aasPaasMeethaPanMasalaStats = [
    ProductStats(1, 'AasPass', '24*24', '5.76', '7.40', '14.5*13.75*10.75in'),
  ];

  static final List<ProductStats> shahiMevaStats = [
    ProductStats(1, 'Shahi Meva\nRs-2', '48*12*6', '12.10', '15.32', '20.5*12.5*17.75in'),
    ProductStats(2, 'Shahi Meva\nRs-5', '24*24', '4.61', '6.19', '14.5*13.75*10.75in'),
    ProductStats(3, 'Shahi Meva\nRs-10', '12x12', '2.45', '3.20', '12.5*11.75*7.45in'),
  ];

  static final List<ProductStats> shahiSupermintStats = [
    ProductStats(1, 'Shahi Supermint\nRs-2.5', '48x12x12', '21.42', '27.68', '24.5 x 19 x 17.5in'),
    ProductStats(2, 'Shahi Supermint\nRs-5', '26*12*24', '4.99', '6.88', '18.5*12.5*11in'),
  ];

  static final List<ProductStats> aasPaasSweetSonf = [
    ProductStats(1, 'Aas Paas\nSweet Sonf', '24*24', '8.64', '10.28', '14.5*13.75*10.75in'),
  ];

}
