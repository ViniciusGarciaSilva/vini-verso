import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/shared/utils/date_utils.dart';

main() {
  group('Get Week Day Initials', () {
    test('Should get the correct week day initials in portuguese for a valid given week day', () {
      // Arrange
      final weekDays = [1, 2, 3, 4, 5, 6, 7];
      final expectedInitials = ['Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'];

      // Act
      final result = weekDays.map((weekDay) => getWeekDayInitials(weekDay));

      // Assert
      expect(result, expectedInitials);
    });

    test('Should get a null for a invalid given week day', () {
      // Arrange
      final invalidWeekDay = 97;
      final expectedInitials = null;

      // Act
      final result = getWeekDayInitials(invalidWeekDay);

      // Assert
      expect(result, expectedInitials);
    });

    test('Should get the correct week day initials for every day of a month starting on Monday',
        () {
      // Arrange
      var targetDate = DateTime(2021, 3, 1);
      final expectedWeekDays = [
        'Seg',
        'Ter',
        'Qua',
        'Qui',
        'Sex',
        'Sáb',
        'Dom',
        'Seg',
        'Ter',
        'Qua',
        'Qui',
        'Sex',
        'Sáb',
        'Dom',
        'Seg',
        'Ter',
        'Qua',
        'Qui',
        'Sex',
        'Sáb',
        'Dom',
        'Seg',
        'Ter',
        'Qua',
        'Qui',
        'Sex',
        'Sáb',
        'Dom',
        'Seg',
        'Ter',
        'Qua'
      ];

      // Act
      final result = [];
      for (var i = 1; i <= 31; i++, targetDate = targetDate.add(Duration(days: 1))) {
        result.add(getWeekDayInitials(targetDate.weekday));
      }

      // Assert
      expect(result, expectedWeekDays);
    });
  });

  group('Get Month Initials', () {
    test('Should get the correct month initials in portuguese for a valid given month', () {
      // Arrange
      final months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
      final expectedInitials = [
        'Jan',
        'Fev',
        'Mar',
        'Abr',
        'Mai',
        'Jun',
        'Jul',
        'Ago',
        'Set',
        'Out',
        'Nov',
        'Dez'
      ];

      // Act
      final result = months.map((month) => getMonthInitials(month));

      // Assert
      expect(result, expectedInitials);
    });

    test('Should get a null for a invalid given month', () {
      // Arrange
      final invalidMonth = 97;
      final expectedInitials = null;

      // Act
      final result = getMonthInitials(invalidMonth);

      // Assert
      expect(result, expectedInitials);
    });

    test('Should get the correct month initials for every month of a year', () {
      // Arrange
      var targetDate = DateTime(2021, 1, 1);
      final expectedInitials = [
        'Jan',
        'Fev',
        'Mar',
        'Abr',
        'Mai',
        'Jun',
        'Jul',
        'Ago',
        'Set',
        'Out',
        'Nov',
        'Dez'
      ];

      // Act
      final result = [];
      for (var i = 1; i <= 12; i++, targetDate = DateTime(targetDate.year, targetDate.month + 1)) {
        result.add(getMonthInitials(targetDate.month));
      }

      // Assert
      expect(result, expectedInitials);
    });
  });
}
