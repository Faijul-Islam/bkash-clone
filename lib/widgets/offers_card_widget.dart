
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/offeres_card_controllers.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({super.key, required this.offerscardIndex});

  final int offerscardIndex;

  @override
  Widget build(BuildContext context) {
    var offerCon = Provider.of<OffersControler>(context);
    var offer = offerCon.offers[offerscardIndex];
    return Container(
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Image(
              image: AssetImage(offer.imgUrl),
              width: 200,
            ),
            Container(
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    offer.titleOne,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(offer.titleTwo),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
