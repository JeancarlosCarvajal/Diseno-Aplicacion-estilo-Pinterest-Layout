import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PinterestPage extends StatelessWidget {
   
  PinterestPage({Key? key}) : super(key: key);

  final List<int> items = List.generate(200, (index) => index);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: GridView.custom(
         gridDelegate: SliverQuiltedGridDelegate(
           crossAxisCount: 4,
           mainAxisSpacing: 4,
           crossAxisSpacing: 4,
           repeatPattern: QuiltedGridRepeatPattern.inverted,
           pattern: [
             // el primer numero es lo alto se divide en 4 partes
             // el segundo numero es lo ancho se divide en 4 partes a lo ancho
             // se necesitan los 4 iwdgets
             QuiltedGridTile(3, 2),
             QuiltedGridTile(2, 2),
             QuiltedGridTile(3, 2),
             QuiltedGridTile(2, 2),
           ],
         ),
         childrenDelegate: SliverChildBuilderDelegate( 
           childCount: items.length,
           (context, index) {
             return _PinterestItem(index: index);
           },
         ),
          ),
      ),
    );
  }
}

class _PinterestItem extends StatelessWidget {
  final int index;
  const _PinterestItem({
    Key? key, 
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Text( 'Hola mundo $index' ))
        );
      }
    );
  }
}