import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/features/admin/users/presentation/bloc/users_bloc.dart';

class SearchForUsers extends StatefulWidget {
  const SearchForUsers({super.key});

  @override
  State<SearchForUsers> createState() => _SearchForUsersState();
}

class _SearchForUsersState extends State<SearchForUsers> {
  @override
  void dispose() {
    context.read<UsersBloc>().searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        final bloc = context.read<UsersBloc>();
        return AppTextFormField(
          controller: bloc.searchController,
          hintText: 'Search for users',
          onChanged: (value) {
            bloc.add(UsersEvent.searchForUser(searchName: value));
            return null;
          },
          suffixIcon: IconButton(
            onPressed: () {
              bloc.searchController.clear();
              bloc.add(const UsersEvent.getAllUsers(isLoading: true));
            },
            icon: bloc.searchController.text.isEmpty
                ? const SizedBox.shrink()
                : const Icon(
                    Icons.clear,
                    color: ColorsDark.blueLight,
                  ),
          ),
          validator: (value) {},
        );
      },
    );
  }
}
