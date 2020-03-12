import 'dart:io';

void main() {
  performTask();
}

void performTask() async {
  task1();
  String taskResult = await task2();
  task3(taskResult);
}

void task1() {
  String result = 'task 1 data';
  print('task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 2);
  String result;
  //sleep(threeSeconds);

  await Future.delayed(threeSeconds, () {
    result = 'task2 data';
    print('task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = task2Data;
  print('task 3 complete with $result');
}
