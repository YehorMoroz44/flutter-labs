class Subjects {
  Subjects(this.subjects);
  Map<int, String> subjects;
}

class Schedule {
  Schedule(Map<String, Map<int, String>> scheduleRaw) {
    scheduleRaw.forEach((key, value) => dayToSubjects[key] = Subjects(value));
  }
  Map<String, Subjects> dayToSubjects = {};
}

class ScheduleData {
  ScheduleData() {
    groupToSchedule = {};
    dataRaw.forEach((key, value) => groupToSchedule[key] = Schedule(value));
  }

  Map<String, Schedule> groupToSchedule = {};

  List<String> getGroupsNames() {
    return groupToSchedule.keys.toList();
  }

  Schedule getScheduleForGroup(String? groupName) {
    return groupToSchedule[groupName]!;
  }

  String getDayName(int dayIndex) {
    switch (dayIndex) {
      case 0:
        return "Monday ";
      case 1:
        return "Tuesday ";
      case 2:
        return "Wednesday ";
      case 3:
        return "Thursday ";
      case 4:
        return "Friday ";
      default:
    }
    return '';
  }
}

Map<String, Map<String, Map<int, String>>> dataRaw = {
  "KБ-44": {
    "Понеділок": {
      2: 'Архітектура спеціалізованих комп`ютерних систем',
      3: 'Діагностика комп`ютерних засобів'
    },
    "Вівторок": {
      1: 'Комп`ютерні засоби опрацювання сигналів',
      4: 'Технології проектування комп`ютерних систем',
      6: 'Проектування комп`ютерних засобів обробки сигналів і зображень'
    },
    "Середа": {
      1: 'Технології проектування комп`ютерних систем',
      2: 'Архітектура спеціалізованих комп`ютерних систем',
      3: 'Захист інформації в комп`ютерних системах'
    },
    "Четвер": {
      4: 'Технології проектування комп`ютерних систем',
      5: 'Архітектура спеціалізованих комп`ютерних систем',
      6: 'Проектування комп`ютерних засобів обробки сигналів і зображень'
    },
    "П'ятниця": {
      2: 'Діагностика комп`ютерних засобів',
      3: 'Комп`ютерні засоби опрацювання сигналів',
      4: 'Захист інформації в комп`ютерних системах'
    },
  },
};