import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/client/home/ui/widgets/categories/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    required this.list,
    super.key,
  });

  final List<AdminCategoriesModel> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
      child: SizedBox(
        height: 125.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              image: list[index].image ?? '',
              title: list[index].name ?? '',
              id: int.parse(list[index].id ?? '0'),
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 15.w),
        ),
      ),
    );
  }
}
