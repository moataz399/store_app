import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/utils/app_logout.dart';
import 'package:store_app/core/widgets/custom_dialog.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/presentation/screens/categories_screen.dart';
import 'package:store_app/features/admin/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:store_app/features/admin/notifications/presentation/screens/notifications_screen.dart';
import 'package:store_app/features/admin/products/presentation/screens/products_screen.dart';
import 'package:store_app/features/admin/users/presentation/screens/users_screen.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    DrawerItemModel(
      icon:  Icon(
        Icons.dashboard,
        color:  context.color.textColor,
      ),
      title: TextApp(
        text: context.translate(LangKeys.dashboard),
        theme: context.textStyle.copyWith(
          color:  context.color.textColor,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page:  const DashboardScreen(),
    ),
    //Categories
    DrawerItemModel(
      icon:  Icon(Icons.category_outlined, color:  context.color.textColor),
      title: TextApp(
        text: context.translate(LangKeys.categories),
        theme: context.textStyle.copyWith(
          color:  context.color.textColor,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page:  const CategoriesScreen(),
    ),
    //Product
    DrawerItemModel(
      icon:  Icon(
        Icons.production_quantity_limits,
        color:  context.color.textColor,
      ),
      title: TextApp(
        text: context.translate(LangKeys.products),
        theme: context.textStyle.copyWith(
          color:  context.color.textColor,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page:  const ProductsScreen(),
    ),
    //Users
    DrawerItemModel(
      icon:  Icon(
        Icons.people_alt_rounded,
        color:  context.color.textColor,
      ),
      title: TextApp(
        text: context.translate(LangKeys.users),
        theme: context.textStyle.copyWith(
          color:  context.color.textColor,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page:  const UsersScreen(),
    ),
    //Notifications
    DrawerItemModel(
      icon:  Icon(
        Icons.notifications_active,
        color:  context.color.textColor,
      ),
      title: TextApp(
        text: context.translate(LangKeys.notifications),
        theme: context.textStyle.copyWith(
          color:  context.color.textColor,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page:  const NotificationsScreen(),
    ),
    //LogOut
    DrawerItemModel(
      icon:  Icon(
        Icons.exit_to_app,
        color:  context.color.textColor,
      ),
      title: GestureDetector(
        onTap: () {
          CustomDialog.twoButtonDialog(
            context: context,
            textBody: context.translate(LangKeys.logOutFromApp),
            textButton1: context.translate(LangKeys.yes),
            textButton2: context.translate(LangKeys.no),
            isLoading: false,
            onPressed: () async {
                await AppLogout().logout();
            },
          );
        },
        child: Text(
          context.translate(LangKeys.logOut),
          style:  TextStyle(
            color:  context.color.textColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeightHelper.bold,
            fontSize: 17,
          ),
        ),
      ),
      page:  const UsersScreen(),
    ),
  ];
}

class DrawerItemModel {
  DrawerItemModel(
      {required this.title, required this.icon, required this.page});

  Widget title;
  Icon icon;
  Widget page;
}
