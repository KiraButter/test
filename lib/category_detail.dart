import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'recipe.dart';

class CategoryDetail extends StatefulWidget {
  final Category1 category;

  const CategoryDetail({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryDetailState createState() {
    return _CategoryDetailState();
  }
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    // 1
    if (widget.category.category1 == 'desert') {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.category.category1),
        ),
        // 2

        body: SafeArea(
          // 3
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            // 5
            itemCount: 1,
            // 6
            itemBuilder: (BuildContext context, int index) {
              // 7
              return GestureDetector(
                child: buildRecipeCard1(Recipe.samples[index]),
              );
            },
          ),
        ),
      );
    } else if (widget.category.category1 == 'lunch') {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.category.category1),
        ),
        // 2

        body: SafeArea(
          // 3
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            // 5
            itemCount: 1,
            // 6
            itemBuilder: (BuildContext context, int index) {
              // 7
              return GestureDetector(
                child: buildRecipeCard2(Recipe.samples[index]),
              );
            },
          ),
        ),
      );
    }
    return Text('');
  }

  Widget buildRecipeCard1(Recipe recipe) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        Column(
          children: [
            Image(
              image: AssetImage(Recipe.samples[0].imageUrl),
              height: 140,
            ),
            // 5
            const SizedBox(
              height: 10,
            ),
            // 6
            Text(Recipe.samples[0].label,
                maxLines: 1, style: Theme.of(context).textTheme.headline3),
            Text(
              Recipe.samples[0].categorys,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        Container(
          width: 10,
        ),
        Column(
          children: [
            Image(
              image: AssetImage(Recipe.samples[2].imageUrl),
              height: 140,
            ),
            // 5
            const SizedBox(
              height: 10,
            ),
            // 6
            Text(Recipe.samples[2].label,
                maxLines: 1, style: Theme.of(context).textTheme.headline3),
            Text(
              Recipe.samples[2].categorys,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ]),
    );
  }

  Widget buildRecipeCard2(Recipe recipe) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(children: [
        Column(
          children: [
            Image(
              image: AssetImage(Recipe.samples[1].imageUrl),
              height: 140,
            ),
            // 5
            const SizedBox(
              height: 10,
            ),
            // 6
            Text(Recipe.samples[1].label,
                maxLines: 1, style: Theme.of(context).textTheme.headline3),
            Text(
              Recipe.samples[1].categorys,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ]),
    );
  }
}
