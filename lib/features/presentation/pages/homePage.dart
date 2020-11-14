import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/models/categoryModel.dart';
import 'package:prayer_partner/features/presentation/models/subCategoryModel,.dart';
import 'package:prayer_partner/features/presentation/pages/sidemenueBar.dart';
// import 'package:prayer_partner/features/presentation/models/subCategoryModel,.dart';
import 'package:prayer_partner/features/presentation/widgets/search_widget.dart';

import 'addTextPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Categories> categories = <Categories>[
    Categories(
      title: 'Home',
      icon: Icons.home,
    ),
    Categories(
      title: 'Cycling',
      icon: Icons.directions_bike,
    ),
    Categories(title: 'Swimming', icon: Icons.map),
    Categories(title: 'Meditation', icon: Icons.phone),
    Categories(title: 'CrossFit', icon: Icons.camera_alt),
    Categories(title: 'Running', icon: Icons.settings),
    Categories(title: 'WorkShop', icon: Icons.photo_album),
    Categories(title: 'Profram', icon: Icons.wifi),
  ];

  List<SubCategories> subCategories = <SubCategories>[
    // SubCategories(
    //   title: 'Home',
    //   imgUrl: 'assets/images/1.jpg',
    //   number: '60',
    // ),
    SubCategories(
        title: 'Health', number: '60 ', imgUrl: 'assets/images/1.jpg'),
    SubCategories(
        title: 'Health', number: '60 ', imgUrl: 'assets/images/2.jpg'),
    SubCategories(
        title: 'Health', number: '60 ', imgUrl: 'assets/images/2.jpg'),
    SubCategories(
        title: 'Health', number: '60 ', imgUrl: 'assets/images/3.jpg'),
    SubCategories(
        title: 'Health', number: '60 ', imgUrl: 'assets/images/2.jpg'),
    SubCategories(
        title: 'Health', number: '60 ', imgUrl: 'assets/images/2.jpg'),
    // SubCategories(
    //     title: 'Health', number: '60 ', imgUrl: 'assets/images/2.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131D),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF13131D),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment(0.05, 0.9),
                  colors: [
                    Color(0xFF13131D),
                    Color(0xFF232A4E),
                    Color(0xFF13131D),
                  ]),
            ),
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   height: 10,
                // ),
                Row(
                  children: [
                    Container(
                        child: SearchField(),
                        width: MediaQuery.of(context).size.width / 1.23),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Container(
                          height: 50,
                          width: 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment(0.05, 0.9),
                                  colors: [
                                    Color(0xFFb3b3b3),
                                    Colors.white,
                                  ]),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Icon(
                            Icons.tune_sharp,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text("Categories", style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.9,
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 0.00,
                      mainAxisSpacing: 0.0,
                      children: List.generate(categories.length, (index) {
                        return Center(
                            child: CategoryListing(
                          icon: Icon(
                            categories[index].icon,
                            color: Colors.white,
                          ),
                          title: categories[index].title,
                          color: Color(0xFF232A4E),
                        ));
                      }),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 25, bottom: 10),
                  child: Text('Subcategories',
                      style: TextStyle(color: Colors.white)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddScript()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.9,
                      child: GridView.count(
                        childAspectRatio: 1.198,
                        // padding:
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.0,
                        mainAxisSpacing: 0.0,
                        children: List.generate(subCategories.length, (index) {
                          return Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 9.0),
                            child: ListingSubPage(
                              title: subCategories[index].title,
                              number: subCategories[index].number,
                              imgUrl: subCategories[index].imgUrl,
                            ),
                          ));
                        }),
                      ),
                    ),
                  ),
                ),
                // SubCategories()
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class ListingSubPage extends StatelessWidget {
  final String title;
  final String number;
  final String imgUrl;
  const ListingSubPage({
    Key key,
    this.title,
    this.number,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 0,
      ),
      child: Container(
        height: 150,
        width: 250,
        decoration: BoxDecoration(
          color: Color(0xFF1b213b),
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF13131D).withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(title,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Text(number,
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                      Text('Cards',
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(color: Colors.white),
              child: Image(
                  alignment: Alignment.centerRight,
                  fit: BoxFit.cover,
                  image: AssetImage(imgUrl)),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryListing extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String title;
  const CategoryListing({
    Key key,
    this.icon,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
      ),
      child: Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(height: 10),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
