@testable
import Leetcode
import Testing

@Suite
struct PredictTheWinnerTests {
  @Test func testPredictthewinner1() {
    let input = [1, 5, 2]
    let output = false
    #expect(PredictTheWinner().predictTheWinner(input) == output)
  }

  @Test func testPredictthewinner2() {
    let input = [1, 5, 233, 7]
    let output = true
    #expect(PredictTheWinner().predictTheWinner(input) == output)
  }

  @Test func testPredictthewinner3() {
    let input = [4_467_104, 7_315_802, 3_174_207, 5_393_892, 1_660_129, 4_874_465, 628_169, 553_784, 674_390, 8_143_293, 2_988_138, 947_070, 8_900_996, 699_746, 39927, 9_390_761, 5_953_422, 8_395_817, 1_620_042, 6_387_023]
    let output = true
    #expect(PredictTheWinner().predictTheWinner(input) == output)
  }

  @Test func testPredictthewinner4() {
    let input = [4_467_104, 7_315_802, 5_393_892, 1_660_129, 4_874_465, 628_169, 553_784, 674_390, 8_143_293, 2_988_138, 947_070, 8_900_996, 699_746, 39927, 9_390_761, 5_953_422, 8_395_817, 1_620_042, 6_387_023]
    let output = false
    #expect(PredictTheWinner().predictTheWinner(input) == output)
  }
}
