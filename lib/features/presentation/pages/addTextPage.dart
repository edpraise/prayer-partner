import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/tabbedScreens/childBearing.dart';
import 'package:prayer_partner/features/presentation/tabbedScreens/christlikeness.dart';
import 'package:prayer_partner/features/presentation/tabbedScreens/finance.dart';
import 'package:prayer_partner/features/presentation/tabbedScreens/heath.dart';

class AddScript extends StatefulWidget {
  @override
  _AddScriptState createState() => _AddScriptState();
}

class _AddScriptState extends State<AddScript> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor:  Color(0xFF13131D),
        appBar: AppBar(
          backgroundColor:  Color(0xFF13131D),
          elevation: 0.0,
          title: Text('Family', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          bottom: TabBar(
            indicator: CircleTabIndicator(color: Colors.white, radius: 3),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                  child: FittedBox(
                      child: Text('Child Bearing',
                          style: TextStyle(color: Colors.white)))),
              Tab(
                  child: FittedBox(
                      child: Text('Christlikeness',
                          style: TextStyle(color: Colors.white)))),
              Tab(
                  child: FittedBox(
                      child: Text('Health',
                          style: TextStyle(color: Colors.white)))),
              Tab(
                  child: FittedBox(
                      child: Text('Finance',
                          style: TextStyle(color: Colors.white)))),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
            children: [ChildBearing(), Christ(), Finance(), Health()]),
      ),
    );
  }
}




class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
