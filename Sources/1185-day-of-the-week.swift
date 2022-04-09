/// https://leetcode.com/problems/day-of-the-week/
import Foundation

struct DayOfTheWeek {
  private static let calendar = Calendar(identifier: .gregorian)

  private static let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    return formatter
  }()

  func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
    let dateComponents = DateComponents(year: year, month: month, day: day)
    let date = DayOfTheWeek.calendar.date(from: dateComponents)!
    return DayOfTheWeek.formatter.string(from: date)
  }
}
