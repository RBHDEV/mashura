import 'package:flutter/material.dart';

class ProfileAvatars extends StatefulWidget {
  const ProfileAvatars({super.key});

  @override
  State<ProfileAvatars> createState() => _ProfileAvatarsState();
}

class _ProfileAvatarsState extends State<ProfileAvatars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(100)),
    );
  }
}
