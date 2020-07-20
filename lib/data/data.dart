

import 'package:ui_1/model/date_model.dart';
import 'package:ui_1/model/event_model.dart';

List<DateModel> getDates() {

  List<DateModel> dates = List<DateModel>();
  DateModel dateModel = DateModel();

  //1
  dateModel.date = '19';
  dateModel.weekDay = "Sun";
  dates.add(dateModel);

  dateModel = new DateModel();

  //2
  dateModel.date = '20';
  dateModel.weekDay = "Mon";
  dates.add(dateModel);

  dateModel = new DateModel();

  //3
  dateModel.date = '21';
  dateModel.weekDay = "Tue";
  dates.add(dateModel);

  dateModel = new DateModel();

  //4
  dateModel.date = '22';
  dateModel.weekDay = "Thu";
  dates.add(dateModel);

  dateModel = new DateModel();

  //5
  dateModel.date = '23';
  dateModel.weekDay = "Fri";
  dates.add(dateModel);

  dateModel = new DateModel();

  //6
  dateModel.date = '24';
  dateModel.weekDay = "sat";
  dates.add(dateModel);

  dateModel = new DateModel();

  //7
  dateModel.date = '25';
  dateModel.weekDay = "Mon";
  dates.add(dateModel);

  dateModel = new DateModel();

   return dates;
}

List<EventModel> getEvents() {

   List<EventModel> events = new List();
    EventModel eventModel = new EventModel();

    //1
   eventModel.imageAssetPath = 'assets/stud.png';
   eventModel.event = 'Study';
   eventModel.time = '2upcomming!';
   events.add(eventModel);

   eventModel = new EventModel();

   //2
   eventModel.imageAssetPath = 'assets/fr.png';
   eventModel.event = 'Meet your friends';
   eventModel.time = '6upcomming!';
   events.add(eventModel);

   eventModel = new EventModel();

   //3
   eventModel.imageAssetPath = 'assets/ex.png';
   eventModel.event = 'Exercise';
   eventModel.time = '10upcomming!';
   events.add(eventModel);

   eventModel = new EventModel();


   //4
   eventModel.imageAssetPath = 'assets/wo.png';
   eventModel.event = 'Work';
   eventModel.time = '12upcomming!';
   events.add(eventModel);

   eventModel = new EventModel();

  return events;
}