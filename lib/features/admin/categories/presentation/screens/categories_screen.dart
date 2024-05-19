import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/features/admin/categories/data/repos/get_categories_repo.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/add_categoty_bottom_sheet_widget.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/admin_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesBloc>()
        ..add(
          const CategoriesEvent.getCategories(),
        ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              context: context,
              widget: MultiBlocProvider(providers: [
                BlocProvider(create: (context) => getIt<UploadImageCubit>()),
                BlocProvider.value(
                  value: getIt<CategoriesBloc>(),
                ),
              ], child: const AddCategoryBottomSheetWidget()),
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
                        child: BlocBuilder<CategoriesBloc, CategoriesState>(
                          builder: (context, state) => state.maybeWhen(
                            loading: () {
                              return const Center(
                                  child: CircularProgressIndicator());
                            },
                            success: (data) {
                              return ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return AdminCategoryItem(
                                    title: data.data!.categories![index].name ??
                                        '',
                                    imageUrl:
                                        data.data!.categories![index].image ??
                                            '',
                                    id: data.data!.categories![index].id ?? '',
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return verticalSpace(15);
                                },
                                itemCount: data.data!.categories!.length,
                              );
                            },
                            error: (error) {
                              return Column(
                                children: [
                                  const Icon(
                                    Icons.error,
                                    size: 40,
                                  ),
                                  Text(
                                    error,
                                    style: const TextStyle(fontSize: 40),
                                  ),
                                ],
                              );
                            },
                            orElse: () {
                              return const SizedBox();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
