import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'package:altogic_app/src/app/pages/profil/profil_controller.dart';

class ProfilView extends View {
  @override
  State<StatefulWidget> createState() {
    return _ProfilViewState(
      ProfilController(),
    );
  }
}

class _ProfilViewState extends ViewState<ProfilView, ProfilController> {
  _ProfilViewState(ProfilController controller) : super(controller);

  @override
  Widget get view {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Color(0xffD5EEFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: padding.top + 15),
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                child: InfoBar(size: size),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ProfilBar(size: size, padding: padding),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            "Stats",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                        height: size.height * 0.15,
                        width: size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            StatsContainer(
                              iconName: Icons.favorite,
                              color: Colors.red,
                              departmentName: 'Like',
                              number: '43',
                            ),
                            StatsContainer(
                              iconName: Icons.thumb_up,
                              color: Colors.purple,
                              departmentName: 'Thanks',
                              number: '21',
                            ),
                            StatsContainer(
                              iconName: Icons.star,
                              color: Colors.blue,
                              departmentName: 'credits',
                              number: '5',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            "Last updates",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                        height: size.height * 0.4,
                        width: size.width,
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return DepartmentsContainer();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilBar extends StatelessWidget {
  const ProfilBar({
    Key? key,
    required this.size,
    required this.padding,
  }) : super(key: key);

  final Size size;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: size.width - 310,
            height: size.height * 0.08,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 238, 238),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://randompicturegenerator.com/img/cat-generator/g442aacb7b23e5f83b893bcc0fe86ad125b2426c94ad4ef4f411082593318b19ff9a8f6fae4e524b2dbe7f1b3bb26053b_640.jpg"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Sam Smith',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Frontend Developer',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class InfoBar extends StatelessWidget {
  const InfoBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffffffff),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ),
        Text(
          "Developer",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffffffff),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}

class StatsContainer extends StatelessWidget {
  final IconData iconName;
  final String departmentName;
  final String number;
  final Color color;
  const StatsContainer({
    Key? key,
    required this.iconName,
    required this.departmentName,
    required this.number,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Padding(
      padding: EdgeInsets.fromLTRB(padding.left + 15, 0, 0, padding.bottom + 10),
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.3,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 239, 235, 235),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(left: padding.left + 5),
              child: Icon(
                iconName,
                color: color,
                size: 33,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: padding.left + 5, top: 2),
                  child: Text(
                    number,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    departmentName,
                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
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
      padding: EdgeInsets.fromLTRB(padding.left + 15, 0, 0, padding.bottom + 10),
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.3,
        decoration:
            BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(15), boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ]),
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
