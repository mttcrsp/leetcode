@testable
import Leetcode
import XCTest

final class MaximumProductOfThreeNumbersTests: XCTestCase {
  func testMaximumProduct1() {
    let input = [1, 2, 3]
    let output = 6
    XCTAssertEqual(MaximumProductOfThreeNumbers().maximumProduct(input), output)
  }

  func testMaximumProduct2() {
    let input = [1, 2, 3, 4]
    let output = 24
    XCTAssertEqual(MaximumProductOfThreeNumbers().maximumProduct(input), output)
  }

  func testMaximumProduct3() {
    let input = [1, -2, 3, -4]
    let output = 24
    XCTAssertEqual(MaximumProductOfThreeNumbers().maximumProduct(input), output)
  }

  func testMaximumProduct4() {
    let input = [-3, -4, -2, -1]
    let output = -6
    XCTAssertEqual(MaximumProductOfThreeNumbers().maximumProduct(input), output)
  }

  func testMaximumProduct5() {
    let input = [-1, -2, -3, 0]
    let output = 0
    XCTAssertEqual(MaximumProductOfThreeNumbers().maximumProduct(input), output)
  }

  func testMaximumProduct6() {
    let input = [174, -524, -624, 903, 982, -219, 126, 876, -875, -617, -495, -621, 194, -333, 804, -199, -916, -88, -706, 562, -293, -876, -697, 975, -6, 197, 544, -919, -487, 432, -849, 512, 619, 44, 252, -388, -177, -256, -847, -206, 114, 116, -827, 518, -511, -511, 257, -630, 56, 706, 675, -705, -211, 170, -13, 684, 836, -708, 336, 728, 511, -229, -403, 310, 206, 539, 784, 666, 506, -252, -34, 709, 233, -290, 633, 29, -550, -412, -778, -107, -123, 724, -58, -97, 71, 776, 104, 207, -381, -132, 88, 312, -39, 478, -817, -484, -929, 651, 434, -911]
    let output = 864_577_350
    XCTAssertEqual(MaximumProductOfThreeNumbers().maximumProduct(input), output)
  }
}
