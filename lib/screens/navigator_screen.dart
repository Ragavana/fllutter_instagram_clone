import 'package:flutter/material.dart';
import '../screens/HomeScreen.dart';
import '../screens/ProfileScreen.dart';
import '../screens/ReelsScreen.dart';
import '../utils/my_icons_icons.dart';

class NavigatorScreen extends StatefulWidget {
  @override
  _NavigatorScreenState createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    final bodyHeight = MediaQuery.of(context).size.height - getAppbar().preferredSize.height - MediaQuery.of(context).padding.bottom -MediaQuery.of(context).padding.top;
    print(bodyHeight);
    return Scaffold(
      appBar: pageindex == 1 ? null : getAppbar(),
      body: getbody(bodyHeight),
      bottomNavigationBar: getFooter(),
    );
  }

  PreferredSizeWidget getAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey.shade100,
      title: const Text(
        'Instagram',
        style: TextStyle(
            fontSize: 30, fontFamily: 'Billabong', color: Colors.black),
      ),
      actions: [
        IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black87,
            )),
        IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(MyIcons.share, color: Colors.black87)),
      ],
    );
  }

  Widget getFooter() {
    return BottomNavigationBar(
      backgroundColor: Colors.grey.shade100,
      currentIndex: pageindex, //New
      onTap: SelectTab,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
            label: '',
            icon: Icon(MyIcons.home_1),
            activeIcon: Icon(MyIcons.home_fill)),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(MyIcons.search_fill),
            activeIcon: Icon(MyIcons.search_fill)),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(MyIcons.reels),
            activeIcon: Icon(MyIcons.reels_fill)),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(MyIcons.heart),
            activeIcon: Icon(MyIcons.heart_fill)),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(MyIcons.profile),
            activeIcon: Icon(MyIcons.profile_fill)),
      ],
    );
  }

  // Widget getFooter() {
  //   List svgicon = [
  //     pageindex == 0
  //         ? 'assets/images/home_active_icon.svg'
  //         : 'assets/images/home_icon.svg',
  //     pageindex == 1
  //         ? 'assets/images/search_active_icon.svg'
  //         : 'assets/images/search_icon.svg',
  //     pageindex == 2
  //         ? 'assets/images/reel_active_icon.svg'
  //         : 'assets/images/reel_icon.svg',
  //     pageindex == 3 ? 'assets/images/bag.svg' : 'assets/images/bag_icon.svg',
  //   ];
  //   return Container(
  //     height: 50.0,
  //     width: double.infinity,
  //     decoration: const BoxDecoration(color: Colors.white),
  //     child: Padding(
  //       padding: const EdgeInsets.all(10.0),
  //       child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: List.generate(svgicon.length + 1, (index) {
  //             return index < 4
  //                 ? InkWell(
  //                     onTap: () {
  //                       SelectTab(index);
  //                     },
  //                     child: SvgPicture.asset(
  //                       svgicon[index],
  //                       width: 25,
  //                       height: 25,
  //                       color: Colors.black,
  //                     ),
  //                   )
  //                 : InkWell(
  //                     onTap: () {
  //                       SelectTab(index);
  //                     },
  //                     child: Container(
  //                       height: pageindex == 4 ? 25: 26,
  //                       width: pageindex == 4 ? 25 : 26,
  //                       decoration: BoxDecoration(
  //                           shape: BoxShape.circle,
  //                           color:
  //                               pageindex == 4 ? Colors.white : Colors.black),
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(2.0),
  //                         child: Container(
  //                           height: pageindex == 4 ? 25 : 26,
  //                           width: pageindex == 4 ? 25 : 26,
  //                           decoration: BoxDecoration(
  //                               border:
  //                                   Border.all(color: Colors.black, width: 1),
  //                               shape: BoxShape.circle,
  //                               image: DecorationImage(
  //                                   image: NetworkImage(profile),
  //                                   fit: BoxFit.cover)),
  //                         ),
  //                       ),
  //                     ),
  //                   );
  //           })),
  //     ),
  //   );
  // }

  Widget getbody(double bodyHeight) {
    List<Widget> Screens = [
      HomeScreen(bodyHeight),
      ReelsScreen(),
      ProfileScreen(),
      HomeScreen(bodyHeight),
      ReelsScreen(),
    ];
    return IndexedStack(
      index: pageindex,
      children: List.generate(Screens.length, (index) => Screens[index]),
    );
  }

  SelectTab(index) {
    setState(() {
      pageindex = index;
    });
  }
}
