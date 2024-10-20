import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/offeres_card_controllers.dart';

class NotificationWidgets extends StatelessWidget {
  const NotificationWidgets({super.key, required this.offerscardIndex});

  final int offerscardIndex;
  @override
  Widget build(BuildContext context) {
    var offerCon = Provider.of<OffersControler>(context);
    var offer = offerCon.offers[offerscardIndex];
    return Column(children: [
      Card(
        child: Column(
          children: [
            Image(
                image:
                    AssetImage(offer.NotifyImg)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                        offer.NotifyImg2),
                    width: 65,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      offer.NotifyTitleOne,
                      style:
                          const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      offer.NotifyTitleTwo,
                      style:
                          const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
