
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/utils/enums.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/features/client/search/data/models/search_request_body.dart';
import 'package:store_app/features/client/search/ui/bloc/search_bloc.dart';
import 'package:store_app/features/client/search/ui/widgets/save_filtter_button.dart';
import 'package:store_app/features/client/search/ui/widgets/search_icon.dart';
import 'package:store_app/features/client/search/ui/widgets/search_name_price_button.dart';

class FilterButtons extends StatefulWidget {
  const FilterButtons({super.key});

  @override
  State<FilterButtons> createState() => _FilterButtonsState();
}

class _FilterButtonsState extends State<FilterButtons> {
  FilterButtonsEnum searchEnum = FilterButtonsEnum.non;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceMaxController = TextEditingController();
  final TextEditingController priceMinController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    priceMaxController.dispose();
    priceMinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        children: [
          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFadeInRight(
                duration: 200,
                child: SearchNamePriceButton(
                  title: 'Search Name',
                  isSelected: searchEnum == FilterButtonsEnum.name,
                  onTap: nameSearchTap,
                ),
              ),
              CustomFadeInRight(
                duration: 200,
                child: SearchNamePriceButton(
                  title: 'Search Price',
                  isSelected: searchEnum == FilterButtonsEnum.price,
                  onTap: priceSearchTap,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          if (searchEnum == FilterButtonsEnum.name) ...[
            //Search Text Field  Name
            CustomFadeInDown(
              duration: 200,
              child: AppTextFormField(
                controller: nameController,
                hintText: 'Search For Product Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Search Name Cant be empty';
                  }
                  return null;
                },
              ),
            ),
            SaveFilterButton(
              onTap: () {
                if (fromKey.currentState!.validate()) {
                  //call api for price max and min
                  context.read<SearchBloc>().add(
                    SearchEvent.searchForProduct(
                      searchRequestBody: SearchRequestBody(
                        name: nameController.text.trim(),
                        priceMin: null,
                        priceMax: null,
                      ),
                    ),
                  );
                  setState(() {
                    searchEnum = FilterButtonsEnum.saved;
                  });
                }
              },
            ),
          ] else if (searchEnum == FilterButtonsEnum.price) ...[
            // Search Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFadeInDown(
                  duration: 200,
                  child: SizedBox(
                    width: 160.w,
                    child: AppTextFormField(
                      controller: priceMinController,
                      hintText: 'Price Min',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Price Min Empty';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                CustomFadeInDown(
                  duration: 200,
                  child: SizedBox(
                    width: 160.w,
                    child: AppTextFormField(
                      controller: priceMaxController,
                      hintText: 'Price Max',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Price Max Empty';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),

            //save price
            SaveFilterButton(
              onTap: () {
                if (fromKey.currentState!.validate()) {
                  //call api for price max and min
                  context.read<SearchBloc>().add(
                    SearchEvent.searchForProduct(
                      searchRequestBody: SearchRequestBody(
                        name: null,
                        priceMin: int.parse(priceMinController.text.trim()),
                        priceMax: int.parse(priceMaxController.text.trim()),
                      ),
                    ),
                  );
                  setState(() {
                    searchEnum = FilterButtonsEnum.saved;
                  });
                }
              },
            ),
          ],

          if (searchEnum == FilterButtonsEnum.non) ...[
            SizedBox(height: 100.h),
            const SearchFormDataIcon(),
          ],
        ],
      ),
    );
  }

  void nameSearchTap() {
    if (searchEnum == FilterButtonsEnum.name) {
      setState(() {
        searchEnum = FilterButtonsEnum.saved;
      });
    } else {
      setState(() {
        searchEnum = FilterButtonsEnum.name;
      });
    }
    nameController.clear();
  }

  void priceSearchTap() {
    if (searchEnum == FilterButtonsEnum.price) {
      setState(() {
        searchEnum = FilterButtonsEnum.saved;
      });
    } else {
      setState(() {
        searchEnum = FilterButtonsEnum.price;
      });
    }
    priceMinController.clear();
    priceMaxController.clear();
  }
}
