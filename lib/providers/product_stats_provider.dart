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
}
