import 'package:flutter/material.dart';

import '../../../../core/model/categories_model.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 0,
          );
        },
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: CategoryModel.list.length,
        itemBuilder: (BuildContext context, i) {
          CategoryModel categoriData = CategoryModel.list[i];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 8.0,bottom: 8.0),
                child: Container(
                  height: 55,
                  width: 55,
                  //color: Colors.deepOrangeAccent,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                          categoriData.categoriesImageUrl.toString()),
                      fit: BoxFit.cover,
                    ),
                    //borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(
                            0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Center(
                  child: Text(
                      categoriData.categoriesTitle.toString())),
            ],
          );
        },
      ),
    );
  }
}
