import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/user.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';

class UserHeader extends StatelessWidget {
  final User user;

  UserHeader({this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          height: 48,
          width: 48,
          borderRadius: BorderRadius.circular(8),
          imageUrl: user.photoUrl,
        ),
        SizedBox(width: 8),
        Container(
          height: 48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '@${user.username}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
