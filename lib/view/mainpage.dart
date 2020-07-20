import 'package:flutter/material.dart';
import 'package:ui_1/data/data.dart';
import 'package:ui_1/model/date_model.dart';
import 'package:ui_1/model/event_model.dart';
import 'package:ui_1/widget/datecontiner.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<DateModel> dates = new List<DateModel>();
  List<EventModel> events = new List();
  String todayDate = "19";

  @override
  void initState() {
    dates = getDates();
    events = getEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.av_timer),
        title: Column(
          children: <Widget>[
            Text('hyesu Jo'),
            Text('hello', style: TextStyle(
           color: Colors.grey[400],
           fontSize: 14
            ),),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app),
           onPressed: (){}),
        ],
      ),
      body: Stack(
        children: <Widget>[
      Container(
      color: Colors.green[50],
      ),

          Container(
            height: MediaQuery.of(context).size.width/1.8,
            width: double.infinity,
            color: Colors.white,
          ),
         Positioned(
         top: screenHeight * (2/7.7),
         left: 28,
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 145.0),
              child: Text('    you\'ve done 80% \nof your work today!',
               style : TextStyle(
                 fontSize: 15.0,
                 color: Colors.white,
                 fontWeight: FontWeight.w500,
               ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.greenAccent[700],
            ),
        width: 320,
        height: 70,
         ),
    ),
          Positioned(
            top: screenHeight * (2/10.5),
            left: 18,
            child: Image.asset('assets/plant.png',
            scale: 2,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Container(
              height: 85,
              child: ListView.builder(
                  itemCount: dates.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DateContainer(
                      weekDay: dates[index].weekDay,
                      date: dates[index].date,
                      isSelected: todayDate == dates[index].date,
                    );
                  }
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top:250.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width/
                      (MediaQuery.of(context).size.height / 2)
                ),
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return EventContainer(
                    imageAssetPath: events[index].imageAssetPath,
                    event: events[index].event,
                    time: events[index].time,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class EventContainer extends StatelessWidget {

  String imageAssetPath;
  String event;
  String time;

  EventContainer({
    this.imageAssetPath,
    this.event,
    this.time,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath,height: 40,),
          SizedBox(height: 10),
          Text(event, style : TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          )),
          Text(time),
        ],
      ),
    );
  }
}


