import 'package:altogic_app/app/pages/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeView extends View {
  @override
  State<StatefulWidget> createState() {
    return _HomeViewState(
      HomeController(),
    );
  }
}

class _HomeViewState extends ViewState<HomeView, HomeController> {
  _HomeViewState(HomeController controller) : super(controller);

  @override
  Widget get view {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: padding.top + 15),
            child: Container(
              width: size.width,
              height: size.height * 0.1,
              child: Row(children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Good morning,Hannah",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: size.width * 0.15,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://randompicturegenerator.com/img/cat-generator/g442aacb7b23e5f83b893bcc0fe86ad125b2426c94ad4ef4f411082593318b19ff9a8f6fae4e524b2dbe7f1b3bb26053b_640.jpg"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: 15,
                )
              ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: size.width - 36,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 238, 238),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                onChanged: (value) => {},
                decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.only(left: padding.left + 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Search by name or job title',
                    hintStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: padding.left + 15),
            child: Text(
              "Departments",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: size.height * 0.15,
            width: size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: padding.left + 15, top: 15),
            child: Text(
              "You rexenty worked with",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: size.height * 0.15,
            width: size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
                DepartmentsContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DepartmentsContainer extends StatelessWidget {
  const DepartmentsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Padding(
      padding: EdgeInsets.only(
        left: padding.left + 15,
      ),
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Color(0xffD5EEFD),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(left: padding.left + 5),
              child: Icon(Icons.person),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.only(left: padding.left + 5),
              child: Text(
                "Development",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: padding.left + 5, top: 2),
              child: Text("88 techies"),
            )
          ],
        ),
      ),
    );
  }
}
