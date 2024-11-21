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
    TimeSlot(
      Time(startSlot: 3, endSlot: 4, date: DateTime.now()),
    ),
  ];

  final mergedSlots = mergeTimeSlot(timeSlots);
  print(mergedSlots
      .map((slot) => '[${slot.time.startSlot}, ${slot.time.endSlot}]')
      .toList());
}

List<TimeSlot> mergeTimeSlot(List<TimeSlot> timeSlots) {
  if (timeSlots.isEmpty) return [];

  // Ordena os intervalos usando Merge Sort.
  timeSlots = mergeSort(timeSlots);

  // Mescla os intervalos.
  final merged = <TimeSlot>[];
  var current = timeSlots[0];

  for (var i = 1; i < timeSlots.length; i++) {
    final next = timeSlots[i];

    // Verifica se os intervalos se sobrepõem ou são contíguos.
    if (current.time.endSlot >= next.time.startSlot) {
      current = TimeSlot(Time(
        startSlot: current.time.startSlot,
        endSlot: current.time.endSlot > next.time.endSlot
            ? current.time.endSlot
            : next.time.endSlot,
        date: current.time.date, // Presume-se mesma data.
      ));
    } else {
      merged.add(current);
      current = next;
    }
  }

  // Adiciona o último intervalo processado.
  merged.add(current);
  return merged;
}

// Função Merge Sort
List<TimeSlot> mergeSort(List<TimeSlot> timeSlots) {
  if (timeSlots.length <= 1) return timeSlots;

  final mid = timeSlots.length ~/ 2;
  final left = mergeSort(timeSlots.sublist(0, mid));
  final right = mergeSort(timeSlots.sublist(mid));

  return merge(left, right);
}

// Função que combina duas listas ordenadas
List<TimeSlot> merge(List<TimeSlot> left, List<TimeSlot> right) {
  int i = 0, j = 0;
  final result = <TimeSlot>[];

  while (i < left.length && j < right.length) {
    if (left[i].time.startSlot < right[j].time.startSlot ||
        (left[i].time.startSlot == right[j].time.startSlot &&
            left[i].time.endSlot <= right[j].time.endSlot)) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  // Adiciona os elementos restantes de cada lista.
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  while (j < right.length) {
    result.add(right[j]);
    j++;
  }

  return result;
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
