@testable
import Leetcode
import XCTest

final class PredictTheWinnerTests: XCTestCase {
  func testTestPredictthewinner1() {
    let input = [1, 5, 2]
    let output = false
    XCTAssertEqual(PredictTheWinner().predictTheWinner(input), output)
  }

  func testTestPredictthewinner2() {
    let input = [1, 5, 233, 7]
    let output = true
    XCTAssertEqual(PredictTheWinner().predictTheWinner(input), output)
  }

  func testTestPredictthewinner3() {
    let input = [4_467_104, 7_315_802, 3_174_207, 5_393_892, 1_660_129, 4_874_465, 628_169, 553_784, 674_390, 8_143_293, 2_988_138, 947_070, 8_900_996, 699_746, 39927, 9_390_761, 5_953_422, 8_395_817, 1_620_042, 6_387_023]
    let output = true
    XCTAssertEqual(PredictTheWinner().predictTheWinner(input), output)
  }

  func testTestPredictthewinner4() {
    let input = [4_467_104, 7_315_802, 5_393_892, 1_660_129, 4_874_465, 628_169, 553_784, 674_390, 8_143_293, 2_988_138, 947_070, 8_900_996, 699_746, 39927, 9_390_761, 5_953_422, 8_395_817, 1_620_042, 6_387_023]
    let output = false
    XCTAssertEqual(PredictTheWinner().predictTheWinner(input), output)
  }
}
