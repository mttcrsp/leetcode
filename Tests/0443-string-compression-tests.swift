@testable
import Leetcode
import XCTest

final class StringCompressionTests: XCTestCase {
  func testTestCompress1() {
    var input: [Character] = ["a", "a", "b", "b", "c", "c", "c"]
    let output: [Character] = ["a", "2", "b", "2", "c", "3"]
    let newCount = StringCompression().compress(&input)
    XCTAssertEqual(Array(input[0 ..< newCount]), output)
  }

  func testTestCompress2() {
    var input: [Character] = ["a"]
    let output: [Character] = ["a"]
    let newCount = StringCompression().compress(&input)
    XCTAssertEqual(Array(input[0 ..< newCount]), output)
  }

  func testTestCompress3() {
    var input: [Character] = ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"]
    let output: [Character] = ["a", "b", "1", "2"]
    let newCount = StringCompression().compress(&input)
    XCTAssertEqual(Array(input[0 ..< newCount]), output)
  }

  func testTestCompress4() {
    var input: [Character] = ["b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "a"]
    let output: [Character] = ["b", "1", "2", "a"]
    let newCount = StringCompression().compress(&input)
    XCTAssertEqual(Array(input[0 ..< newCount]), output)
  }
}
