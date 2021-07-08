import 'dart:io';
import 'dart:async';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration delay = new Duration(seconds: 2);
  String result;

  await Future.delayed(delay, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(task2Result) {
  String result = 'task 3 data : $task2Result';
  print('Task 3 complete > $result');
}
