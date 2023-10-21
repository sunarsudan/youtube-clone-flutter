import 'package:flutter/material.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              Expanded(
                  child: Text(
                'Youtube',
                style: Theme.of(context).textTheme.headlineLarge,
                selectionColor: Colors.red,
              )),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Expanded(
              child: Column(
            children: [
              MenuListItem('Home', Icons.home),
              MenuListItem('Shorts', Icons.short_text),
              MenuListItem('Subscriptions', Icons.video_call),
              const Divider(
                color: Colors.white,
              ),
              MenuListItem('Library', Icons.library_add),
              MenuListItem('History', Icons.history),
              MenuListItem('Your videos', Icons.video_call_outlined),
              MenuListItem('Watch later', Icons.location_searching_outlined),
              const Divider(
                color: Colors.white,
              ),
              Text(
                'Subscriptions',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              MenuListItem('The Techh Brothers', Icons.youtube_searched_for),
              MenuListItem('The Techh Brothers', Icons.youtube_searched_for),
              MenuListItem('The Techh Brothers', Icons.youtube_searched_for),
              MenuListItem('The Techh Brothers', Icons.youtube_searched_for),
              MenuListItem('The Techh Brothers', Icons.youtube_searched_for),
            ],
          ))
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget MenuListItem(String title, IconData icon) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(),
        ),
        leading: Icon(icon),
      ),
    );
