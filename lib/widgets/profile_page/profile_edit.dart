import 'package:flutter/material.dart';
import 'package:instagram2/constant/constant.dart';

class ProfileEdit extends StatelessWidget {
  final dynamic context;
  const ProfileEdit({super.key, required this.context});

  // close bottom sheet
  void _closeEditProfile() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          // app bar
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white.withOpacity(0.1),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // cancel button
                GestureDetector(
                  onTap: _closeEditProfile,
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // title
                const Text(
                  'Edit profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),

                // Done button
                GestureDetector(
                  onTap: _closeEditProfile,
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // profile image change
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                foregroundColor: Colors.white,
                backgroundImage: NetworkImage(ConstantValues.profileImage),
                radius: 35,
              ),
              const SizedBox(height: 15),
              const Text(
                'Edit picture or avatar',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.white12,
          ),

          // name
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 15,
                  ),
                  child: const Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.white12,
                    ),
                  )),
                  child: const Text(
                    'Ө. Батсүрэн',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // username
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 15,
                  ),
                  child: const Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.white12,
                    ),
                  )),
                  child: const Text(
                    'o._batsuren',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Pronouns
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 15,
                  ),
                  child: const Text(
                    'Pronouns',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.white12,
                    ),
                  )),
                  child: const Text(
                    'Pronouns',
                    style: TextStyle(
                      color: Colors.white24,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // bio
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 15,
                  ),
                  child: const Text(
                    'Bio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.white12,
                    ),
                  )),
                  child: const Text(
                    'Your only limit is your mind.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Links
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
              top: 15,
              bottom: 15,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.white12,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Links',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.white12,
                ),
              ),
            ),
            child: const Text(
              'Switch to professional account',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // edit avatar
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.white12,
                ),
              ),
            ),
            child: const Text(
              'Edit avatar',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Personal info
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            width: double.infinity,
            child: const Text(
              'Personal information settings',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
