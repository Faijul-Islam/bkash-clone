
import 'package:flutter/widgets.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/offers_card_data.dart';
import '../model/offers_card_model.dart';

// class OffersNotifyer extends StateNotifier<List<OffersModel>> {
//   OffersNotifyer() : super(offersModel);
// }
//
// final OfferscardNotifyerProvider =
//     StateNotifierProvider<OffersNotifyer, List<OffersModel>>((ref) {
//   return OffersNotifyer();
// });

class OffersControler with ChangeNotifier{
  List<OffersModel> offersList = offersModel; // Initialize with your model data

  List<OffersModel> get offers => offersList;

  void updateOffers(List<OffersModel> newOffers) {
    offersList = newOffers;
    notifyListeners(); // Notify listeners to update the UI
  }
}