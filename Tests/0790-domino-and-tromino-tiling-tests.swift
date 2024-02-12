@testable
import Leetcode
import XCTest

final class DominoAndTrominoTilingTests: XCTestCase {
  func testNumtilings1() {
    let input = 3
    let output = 5
    XCTAssertEqual(DominoAndTrominoTiling().numTilings(input), output)
  }

  func testNumtilings2() {
    let input = 1
    let output = 1
    XCTAssertEqual(DominoAndTrominoTiling().numTilings(input), output)
  }

  func testNumtilings3() {
    let input = 5
    let output = 24
    XCTAssertEqual(DominoAndTrominoTiling().numTilings(input), output)
  }

  func testNumtilings4() {
    let input = 9
    let output = 569
    XCTAssertEqual(DominoAndTrominoTiling().numTilings(input), output)
  }

  func testNumtilings5() {
    let input = 30
    let output = 312_342_182
    XCTAssertEqual(DominoAndTrominoTiling().numTilings(input), output)
  }

  func testNumtilings6() {
    let input = 1000
    let output = 979_232_805
    XCTAssertEqual(DominoAndTrominoTiling().numTilings(input), output)
  }
}
