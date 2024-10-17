@testable
import Leetcode
import Testing

@Suite
struct KeysAndRoomsTests {
  @Test func testCanvisitallrooms1() {
    let input = [[1], [2], [3], []]
    let output = true
    #expect(KeysAndRooms().canVisitAllRooms(input) == output)
  }

  @Test func testCanvisitallrooms2() {
    let input = [[1, 3], [3, 0, 1], [2], [0]]
    let output = false
    #expect(KeysAndRooms().canVisitAllRooms(input) == output)
  }
}
