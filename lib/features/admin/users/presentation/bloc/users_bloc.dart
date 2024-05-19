import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';
import 'package:store_app/features/admin/users/data/repos/users_repo.dart';

part 'users_bloc.freezed.dart';

part 'users_event.dart';

part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(this.usersRepo) : super(const UsersState.loading()) {
    on<GetAllUsersEvent>(getAllUsers);
    on<SearchForUserEvent>(searchForUser);
  }

  final UsersRepo usersRepo;
  List<UserModel> usersList = [];
  final TextEditingController searchController = TextEditingController();

  Future<void> getAllUsers(
    GetAllUsersEvent event,
    Emitter<UsersState> emit,
  ) async {
    if (event.isLoading) {
      emit(const UsersState.loading());
    }

    final result = await usersRepo.getAllUsers();
    result.when(
      success: (data) {
        if (data.data.users.isEmpty) {
          emit(const UsersState.empty());
        } else {
          usersList = data.data.users;
          emit(UsersState.success(list: usersList));
        }
      },
      failure: (error) {
        emit(UsersState.error(error: error));
      },
    );
  }


  FutureOr<void> searchForUser(
    SearchForUserEvent event,
    Emitter<UsersState> emit,
  ) async {
    final searchResult = usersList
        .where(
          (e) =>
              e.name!.toLowerCase().startsWith(
                    event.searchName!.toLowerCase().trim(),
                  ) ||
              e.email!
                  .toLowerCase()
                  .startsWith(event.searchName!.toLowerCase().trim()),
        )
        .toList();

    if (searchResult.isEmpty) {
      emit(const UsersState.empty());
    } else {
      emit(UsersState.search(userList: searchResult));
    }
  }
}
