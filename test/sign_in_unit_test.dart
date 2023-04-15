import 'package:flutter_test/flutter_test.dart';
import 'package:ui/model/home_status.dart';
import 'package:ui/service/home_service.dart';

void main() {
  test("Get status ishlayaptimi", () async {
    dynamic result = await StatusService.getSTatus();
    expect(result.runtimeType, HomeStatus());
  });
}
