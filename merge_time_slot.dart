// {
//   	"id": 123,
//   	"location": { "address": "", "lat": 1234.00, "lng": 1234.00 },
//   	"date": "2024-03-19",
//   	"agentId": 123,
//      "regionId": 12,
//   	"time": {
//   		"startSlot": 1,
//   		"endSlot": 3,
//     }
// }

void main() {
  final timeSlots = [
    TimeSlot(
      Time(startSlot: 1, endSlot: 2, date: DateTime.now()),
    ),
    TimeSlot(
      Time(startSlot: 2, endSlot: 3, date: DateTime.now()),
    ),
    TimeSlot(
      Time(startSlot: 5, endSlot: 6, date: DateTime.now()),
    ),
  ];
  // [1,2][2,3]; [1,3] [2,4]; [1,3][2,8]; [1,10][2,8]; [1,2][2,3][5,6];
  // [1,2][2,3][3,4]; [1,2][2,3][3,4][4,5]; [1,5][2,4]; [1,2][2,3][7,8][10,12]; [1,3][7,8][10,12]
  // [1,10][2,5];
  // [2,3][1,2];
  // maior endtime
  // menor starttime
  // print(mergeTimeSlot(timeSlots));
  mergeTimeSlot(timeSlots);
}

void sortTimeSlot(List<TimeSlot> timeSlots) {
  //[2,3][1,2][5,6][3,4]
  //[1,2][]
  final output = [];
  // [2,3] > [1,2]
  // timeSlot.length
  for (int i = 0; i < timeSlots.length; i++) {
    if (output.length == 0) {
      output.add(timeSlots[i]);
    }
  }
}

List<dynamic> mergeTimeSlot(List<TimeSlot> timeSlots) {
  final output = [];
  // filtrei pelo dia
  for (int i = 0; i < timeSlots.length - 1; i++) {
    if (i == timeSlots.length - 1) break;
    if (timeSlots[i].time.endSlot >= timeSlots[i + 1].time.startSlot) {
      // 10 2
      final endSlot = timeSlots[i + 1].time.endSlot > timeSlots[i].time.endSlot
          ? timeSlots[i + 1].time.endSlot
          : timeSlots[i].time.endSlot;
      output.add([timeSlots[i].time.startSlot, endSlot]);
    } else {
      output.add([timeSlots[i].time.startSlot, timeSlots[i].time.endSlot]);
    }
  }
  print(output);
  return output;
}

class TimeSlot {
  final Time time;

  TimeSlot(this.time);
}

class Time {
  final int startSlot;
  final int endSlot;
  final DateTime date;

  Time({
    required this.startSlot,
    required this.endSlot,
    required this.date,
  });
}
