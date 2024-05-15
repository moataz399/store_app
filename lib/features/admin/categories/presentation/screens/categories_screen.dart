import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/add_categoty_bottom_sheet_widget.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/admin_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomBottomSheet.showBottomSheet(
            context: context,
            widget: AddCategoryBottomSheetWidget(),
          );
        },
        backgroundColor: context.color.navBarbg,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
        title: context.translate(LangKeys.categories),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
        child: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {},
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: verticalSpace(20),
                    ),
                    SliverToBoxAdapter(
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const AdminCategoryItem(
                            title: 'mac book',
                            imageUrl:
                                'https://img.freepik.com/premium-photo/laptop-front-view_426604-1004.jpg?w=1060',
                          );
                        },
                        separatorBuilder: (context, index) {
                          return verticalSpace(15);
                        },
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
