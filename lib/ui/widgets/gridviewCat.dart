import 'package:app1/data/model/category/CategoryOrBrandResponse.dart';
import 'package:app1/ui/widgets/catorbrandItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoriesGridView extends StatelessWidget {
  List<CategoryOrBrands> list;
  CustomCategoriesGridView({required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return Catorbranditem(
            list: list[index],
          );
          //list: CategoriesList[index]
        },
      ),
    );
  }
}
