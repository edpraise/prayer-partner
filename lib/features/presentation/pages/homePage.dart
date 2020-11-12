import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/models/categoryModel.dart';
import 'package:prayer_partner/features/presentation/pages/sidemenueBar.dart';
// import 'package:prayer_partner/features/presentation/models/subCategoryModel,.dart';
import 'package:prayer_partner/features/presentation/widgets/search_widget.dart';

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
    Categories(title: 'Cycling', icon: Icons.directions_bike),
    Categories(title: 'Swimming', icon: Icons.map),
    Categories(title: 'Meditation', icon: Icons.phone),
    Categories(title: 'CrossFit', icon: Icons.camera_alt),
    Categories(title: 'Running', icon: Icons.settings),
    Categories(title: 'WorkShop', icon: Icons.photo_album),
    Categories(title: 'Profram', icon: Icons.wifi),
  ];

  List subCategory = [
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF206040),
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF206040),
          ),

          drawer: MainDrawer(),
          
      body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
          child: (
            Column(
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
                        width: MediaQuery.of(context).size.width / 1.1),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.yellow),
                        child: Icon(
                          Icons.tune_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Categories", style: TextStyle(color: Colors.white)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3.9,
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    children: List.generate(categories.length, (index) {
                      return Center(
                          child: CategoryListing(
                              icon: Icon(categories[index].icon),
                              title: categories[index].title,
                              color: Colors.blueGrey));
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:
                      Text('Sorting Training', style: TextStyle(color: Colors.white)),
                ),
             SubCategories()
                // CategoryListing()
            ],
          )),
        ),
              ),
      ),
    );
  }
}

class SubCategories extends StatelessWidget {
  const SubCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0, top: 10),
      child: Container(
        height: 120,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20) 
        ),
        child: Row(
          children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 height: 30,
                 width: 30,
                 decoration: BoxDecoration(
                   color: Color(0xFFBF3E9D),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: Icon(Icons.person, color: Colors.red),
               )
             ),
           SizedBox(width: 10,),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Trainer', style: TextStyle(color: Colors.white, fontSize: 20)),
               Text('45mins', style: TextStyle(color: Colors.grey))
             ],
           ),
           Expanded(child: Container()),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 120,
               width: 30,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Container(
                       height: 10,
                       width: 20,
                       decoration: BoxDecoration(
                         color:Colors.red,
                         borderRadius: BorderRadius.circular(40)
                       ),
                     ),
                   ],
                 ),
               ),
             ),
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
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [icon, Text(title)],
        ),
      ),
    );
  }
}
