import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/helpers/image_picker.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
        child: InkWell(
          onTap: () {

          },
          child: CircleAvatar(
            radius: 38.r,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1715238574317-8af0705f73b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8fA%3D%3D"),
          ),
        ),
        duration: 500);
  }
}
