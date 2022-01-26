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
    ProductStats(1, 'Salted Chips', '36Pkts/Ctn', '4.5', '5.8', '19*14*9'),
  ];

  static final List<ProductStats> nimcoSavoryMixStats = [
    ProductStats(1, 'Savory Mix', '36Pkts/Ctn', '7.2', '8.54', '19*14*9'),
  ];

  static final List<ProductStats> nimcoMunchyMixStats = [
    ProductStats(1, 'Munchy Mix', '36Pkts/Ctn', '7.2', '8.54', '19*14*9'),
  ];

  static final List<ProductStats> nimcoDalMothStats = [
    ProductStats(1, 'Large', '36Pkts/Ctn', '7.2', '5.84', '19*14*9'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> nimcoDalMoongStats = [
    ProductStats(1, 'Large', '36Pkts/Ctn', '7.2', '5.84', '19*14*9'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
    ProductStats(3, 'Small', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> nimcoDalChanaStats = [
    ProductStats(1, 'Large', '36Pkts/Ctn', '--------', '--------', '--------'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> nimcoChilliChipsStats = [
    ProductStats(1, 'Large', '36Pkts/Ctn', '4.5', '5.8', '19*14*9'),
    ProductStats(2, 'Medium', '--------', '--------', '--------', '--------'),
    ProductStats(3, 'Small', '--------', '--------', '--------', '--------'),
  ];

  static final List<ProductStats> nimcoBlackPepperChipsStats = [
    ProductStats(
        1, 'Black Pepper\nChips', '36Pkts/Ctn', '4.5', '5.8', '19*14*9'),
  ];

  static final List<ProductStats> nimcoChewraStats = [
    ProductStats(1, 'Chewra', '36Pkts/Ctn', '7.2', '8.54', '19*14*9'),
  ];

  static final List<ProductStats> nimcoBoondiStats = [
    ProductStats(1, 'Boondi', '36Pkts/Ctn', '9.7', '13.7', '19*14*9'),
  ];

  static final List<ProductStats> nimcoPapdiStats = [
    ProductStats(1, 'Papdi', '36Pkts/Ctn', '5.4', '6.74', '19*14*9'),
  ];

  static final List<ProductStats> nimcoRoyalMixStats = [
    ProductStats(1, 'Medium', '--------', '--------', '--------', '--------'),
    ProductStats(2, 'Small', '--------', '--------', '--------', '--------'),
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
    ProductStats(1, 'Aas Paas\nChocolate', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiMevaChocolateStats = [
    ProductStats(1, 'Shahi Meva\nChocolate', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiSupariClassicStats = [
    ProductStats(1, 'Shahi Supari\nClassic', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiDeewanStats = [
    ProductStats(1, 'Shahi Deewan', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiDeluxeLiteStats = [
    ProductStats(1, 'Shahi Deluxe\nLite', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiDeluxeStats = [
    ProductStats(1, 'Shahi Deluxe', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiElaichiStats = [
    ProductStats(1, 'Shahi Elaichi', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiKalonjiStats = [
    ProductStats(1, 'Shahi Kalonji', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> aasPaasMeethaPanMasalaStats = [
    ProductStats(1, 'Aas Paas Meetha\nPan Masala', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiMevaStats = [
    ProductStats(1, 'Shahi Meva', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> shahiSupermintStats = [
    ProductStats(1, 'Shahi Supermint', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

  static final List<ProductStats> aasPaasSweetSonf = [
    ProductStats(1, 'Aas Paas\nSweet Sonf', '-- x -- x --', '----', '----', '-- x -- x --'),
  ];

}
