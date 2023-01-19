import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/presentation/components/widget/show_loading_indicator.dart';
import 'package:marvel_cinematic_universe/presentation/layout/details_layout.dart';

/* Here DataItem is widget will be used to build movie list or series list
* it will dynamic list (type Movie or type list both will work same way)
* and take int index (will take this index from Builder) to create single
* DataItem for every item in list (movie list or series list)  */
//2
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
    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, DetailsLayout.rout, arguments: index),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Image.network(
                    data[index].coverUrl,
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : showLoadingIndicator(),
                    fit: BoxFit.cover,
                  )),
            ),
            Text(
              ' Title : ${data[index].title}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Release Date : ${data[index].releaseDate ?? "Upcoming"}',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
