import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/features/admin/users/presentation/bloc/delete_bloc/delete_user_bloc.dart';
import 'package:store_app/features/admin/users/presentation/bloc/users_bloc.dart';

class DeleteUserIcon extends StatelessWidget {
  const DeleteUserIcon({
    required this.userId,
    super.key,
  });

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteUserBloc, DeleteUserState>(
      listener: (context, state) {
        state.whenOrNull(
          deletedSuccess: () {
            context
                .read<UsersBloc>()
                .add(const UsersEvent.getAllUsers(isLoading: true));
            ShowToast.showToastSuccessTop(
                message: 'User has been deleted', context: context, seconds: 1,);
          },
          deletedError: (error) {
            ShowToast.showToastErrorTop(
                message: error, context: context, seconds: 1,);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          deleteLoading: (id) {
            if (id == userId) {
              return SizedBox(
                height: 30.h,
                width: 30.w,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              );
            }
          },
          orElse: () {
            return InkWell(
              onTap: () {
                context
                    .read<DeleteUserBloc>()
                    .add(DeleteUserEvent.deleteUser(userId: userId));
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
