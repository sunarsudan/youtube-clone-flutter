import 'package:flutter/material.dart';
import 'package:youtubeclone/responsive/responsive.dart';
import 'package:youtubeclone/view/menu_screen.dart';

class MainContentScreen extends StatefulWidget {
  const MainContentScreen({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  State<MainContentScreen> createState() => _MainContentScreenState();
}

class _MainContentScreenState extends State<MainContentScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideMenuScreen(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Row(
                  children: [
                    if (Responsive.isTablet(context))
                      IconButton(
                          onPressed: () {
                            _globalKey.currentState!.openDrawer();
                            setState(() {});
                          },
                          icon: Icon(Icons.menu)),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: Center(
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.mic)),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.video_call)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notification_add)),
                    const CircleAvatar(
                      radius: 20,
                      child: Center(
                        child: Text('H'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: Responsive.isDesktop(context)
                ? widget.height * 0.05
                : widget.height * 0.09,
          ),
          Expanded(
              child: GridView.builder(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 13 : 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context)
                    ? 3
                    : (Responsive.isTablet(context) ? 2 : 1),
                mainAxisSpacing: 20,
                childAspectRatio: 1.23,
                crossAxisSpacing: 20),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                      flex: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.9))),
                      )),
                  Expanded(
                      flex: 4,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: widget.height * 0.01,
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.blue,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'jalwa bhabi ne aafpi dewar ki pitai keyi and dewar mar gaya',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
                                      'The code journey',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ))
                              ],
                            )
                          ],
                        ),
                      )),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
