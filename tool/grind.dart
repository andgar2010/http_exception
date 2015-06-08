library http_exception.tool.grind;

export 'package:bwu_utils_dev/grinder/default_tasks.dart' hide main;
import 'package:bwu_utils_dev/grinder/default_tasks.dart'
    show grind, coverageTask, testTask;

main(List<String> args) {
  // this package doesn't have tests
  testTask = ([_]) {};
  coverageTask = () {};
  grind(args);
}
