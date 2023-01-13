import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/styles/colors.dart';

class DataItem extends StatelessWidget {
  final List<dynamic> data;
  final int index;

  const DataItem({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Column(
          children: [
            Expanded(child: Image.network(data[index].coverUrl)),
            Text(
              ' Title : ${data[index].title}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              ' Release Date : ${data[index].releaseDate}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
