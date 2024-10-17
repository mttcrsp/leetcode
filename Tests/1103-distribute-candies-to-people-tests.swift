@testable
import Leetcode
import Testing

@Suite
struct DistributeCandiesToPeopleTests {
  @Test func testDistributeCandies1() {
    let input = (7, 4)
    let output = [1, 2, 3, 1]
    #expect(DistributeCandiesToPeople().distributeCandies(input.0, input.1) == output)
  }

  @Test func testDistributeCandies2() {
    let input = (1234, 1)
    let output = [1234]
    #expect(DistributeCandiesToPeople().distributeCandies(input.0, input.1) == output)
  }

  @Test func testDistributeCandies3() {
    let input = (1_000_000_000, 10)
    let output = [100_014_472, 99_980_504, 99_984_976, 99_989_448, 99_993_920, 99_998_392, 100_002_864, 100_007_336, 100_011_808, 100_016_280]
    #expect(DistributeCandiesToPeople().distributeCandies(input.0, input.1) == output)
  }

  @Test func testDistributeCandies4() {
    let input = (10, 3)
    let output = [5, 2, 3]
    #expect(DistributeCandiesToPeople().distributeCandies(input.0, input.1) == output)
  }

  @Test func testDistributeCandies5() {
    let input = (816_237_543, 13)
    let output = [62_770_722, 62_773_830, 62_776_938, 62_780_046, 62_783_154, 62_786_262, 62_789_370, 62_792_478, 62_795_586, 62_798_694, 62_801_802, 62_804_910, 62_783_751]
    #expect(DistributeCandiesToPeople().distributeCandies(input.0, input.1) == output)
  }
}
