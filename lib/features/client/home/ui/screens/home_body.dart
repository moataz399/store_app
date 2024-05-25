import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/EmptyScreen.dart';
import 'package:store_app/features/client/home/ui/blocs/categories_bloc.dart';
import 'package:store_app/features/client/home/ui/widgets/categories/categories_list.dart';
import 'package:store_app/features/client/home/ui/widgets/categories/categories_shimmer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<CategoriesBloc>()
            .add(const CategoriesEvent.getAllCategories());
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const CategoriesShimmer();
                  },
                  success: (categoreisList) {
                    return CategoriesList(
                      list: categoreisList,
                    );
                  },
                  empty: () {
                    return const EmptyScreen();
                  },
                  error: Text.new,
                );
              },
            ),
          ),

          //Products
        ],
      ),
    );
  }
}
