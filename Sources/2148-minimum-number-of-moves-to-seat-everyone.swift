/// https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/
struct MinimumNumberOfMovesToSeatEveryone {
  func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
    var count = 0
    for (lhs, rhs) in zip(seats.sorted(), students.sorted()) {
      count += abs(lhs - rhs)
    }
    return count
  }
}
