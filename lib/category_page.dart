import 'package:flutter/material.dart';
import 'recipe.dart';
import 'category_detail.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2

      // 3
      body: SafeArea(
        // 4
        // 4
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          // 5
          itemCount: Category1.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return CategoryDetail(category: Category1.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildCategoryCard(Category1.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildCategoryCard(Category1 category) {
    return Card(
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16),
        // 4
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: AssetImage(category.url),
                height: 140,
              ),
            ),
            // 5
            const SizedBox(
              height: 14,
            ),
            // 6
            Text(
              category.category1,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
