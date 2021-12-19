import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          children: [
            Stack(
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      width: Get.width,
                      height: 85,
                      margin: EdgeInsets.only(top: 50),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Container(
                                    height: 68,
                                    width: 68,
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFDE0046),
                                          Color(0xFFF7A34B),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                        height: 65,
                                        width: 65,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/profile.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Text(
                              "Nama ${index}",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      height: 2,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: Get.width,
                              padding: EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/profile.jpg"),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Dzulfikri",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_horiz_outlined),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: Get.width,
                              child: Image(
                                image: AssetImage("assets/images/img1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: Get.width,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset("assets/svg/heart.svg"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                          "assets/svg/comment.svg"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset("assets/svg/share.svg"),
                                    ],
                                  ),
                                  // Image.asset("assets/images/carousel.png"),
                                  SvgPicture.asset("assets/svg/bookmark.svg"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "100 Likes",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: Get.width,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/user1.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Add comments..",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/images/love.png"),
                                      Image.asset("assets/images/cry.png"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: Get.width,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/svg/logo.svg"),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/svg/add.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/svg/heart.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/svg/messenger.svg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Text("Search"),
            ),
            Center(
              child: Text("Video"),
            ),
            Center(
              child: Text("Shop"),
            ),
            Center(
              child: Text("Profile"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          controller.currentIndex.value = value;
          controller.pageController.jumpToPage(value);
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/svg/Home.svg"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/svg/Search.svg"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/svg/Reels.svg"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/svg/Shop.svg"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
