@testable
import Leetcode
import Testing

@Suite
struct NumberOfSeniorCitizensTests {
  @Test func testCountseniors1() {
    let input = ["7868190130M7522", "5303914400F9211", "9273338290F4010"]
    let output = 2
    #expect(NumberOfSeniorCitizens().countSeniors(input) == output)
  }

  @Test func testCountseniors2() {
    let input = ["1313579440F2036", "2921522980M5644"]
    let output = 0
    #expect(NumberOfSeniorCitizens().countSeniors(input) == output)
  }
}
