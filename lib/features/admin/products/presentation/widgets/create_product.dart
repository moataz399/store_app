// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
// import 'package:store_app/core/di/dependency_injection.dart';
// import 'package:store_app/core/helpers/extensions.dart';
// import 'package:store_app/core/widgets/text_app.dart';
// import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
// import 'package:store_app/features/admin/products/presentation/bloc/admin_products_bloc.dart';
// import 'package:store_app/features/admin/products/presentation/bloc/create_product_bloc/create_peoduct_bloc.dart';
// import 'package:store_app/features/admin/products/presentation/widgets/create_product_bottom_sheet.dart';
//
// import '../../../../../core/style/colors/colors_dark.dart';
// import '../../../../../core/style/fonts/Font_weight_helper.dart';
// import '../../../../../core/style/fonts/font_family_helper.dart';
// import '../../../../../core/widgets/custom_bottom_sheet.dart';
// import '../../../../../core/widgets/custom_button.dart';
//
// class CreateProduct extends StatelessWidget {
//   const CreateProduct({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         TextApp(
//           text: 'Get All Products',
//           theme: context.textStyle.copyWith(
//             fontSize: 18.sp,
//             fontWeight: FontWeightHelper.medium,
//             fontFamily: FontFamilyHelper.poppinsEnglish,
//           ),
//         ),
//         CustomButton(
//           onPressed: () {
//             CustomBottomSheet.showBottomSheet(
//               context: context,
//               widget: MultiBlocProvider(
//                 providers: [
//                   BlocProvider(
//                     create: (context) => getIt<CreateProductBloc>(),
//                   ),
//                   BlocProvider(
//                     create: (context) => getIt<UploadImageCubit>(),
//                   ),
//                   BlocProvider(
//                     create: (context) => getIt<CategoriesBloc>()
//                       ..add(
//                         const CategoriesEvent.getCategories(),
//                       ),
//                   ),
//                 ],
//                 child: const CreateProductBottomSheet(),
//               ),
//               whenComplete: () {
//                 context.read<AdminProductsBloc>().add(
//                       const AdminProductsEvent.getAllProducts(
//                         isNotLoading: false,
//                       ),
//                     );
//               },
//             );
//           },
//           backgroundColor: ColorsDark.blueDark,
//           lastRadius: 10,
//           threeRadius: 10,
//           text: 'Add',
//           width: 90.w,
//           height: 35.h,
//         ),
//       ],
//     );
//   }
// }
