import 'package:auth_service/auth_service.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    final Key? key,
    required final AuthUser authUser,
  })  : _authUser = authUser,
        super(key: key);

  final AuthUser _authUser;

  @override
  Widget build(final BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(_authUser.photoUrl ?? ''),
                onBackgroundImageError: (final _, final __) => const Icon(
                  Icons.person,
                  size: 48,
                ),
              ),
              accountName: Text(_authUser.displayName ?? 'Anonymous'),
              accountEmail: Text(_authUser.email ?? 'Anonymous'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
}
