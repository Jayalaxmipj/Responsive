import 'package:dashboard/screens/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets\icons\Documents.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets\icons\media.svg",
            title: "Media files ",
            amountOfFiles: "15 GB",
            numOfFiles: 328,
          ),
          StorageInfoCard(
            svgSrc: "assets\icons\Documents.svg",
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 138,
          ),
          StorageInfoCard(
            svgSrc: 'assets\icons\Documents.svg',
            title: "Unknown Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 128,
          ),
        ],
      ),
    );
  }
}
