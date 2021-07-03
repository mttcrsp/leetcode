@testable
import Leetcode
import XCTest

final class ReadNCharactersGivenRead4Tests: XCTestCase {
  func testRead1() {
    run(withString: "abc", count: 4, expectCount: 3)
  }

  func testRead2() {
    run(withString: "abcde", count: 5, expectCount: 5)
  }

  func testRead3() {
    run(withString: "abcdABCD1234", count: 12, expectCount: 12)
  }

  func testRead4() {
    run(withString: "leetcode", count: 5, expectCount: 5)
  }

  private func run(withString string: String, count: Int, expectCount: Int, file: StaticString = #filePath, line: UInt = #line) {
    var buffer = [Character](repeating: "-", count: count)
    let reader = ReadNCharactersGivenRead4(string: string)
    let actualCount = reader.read(&buffer, buffer.count)
    let actualOutput = Array(buffer.prefix(actualCount))
    let expectOutput = Array(string.prefix(count))
    XCTAssertEqual(actualCount, expectCount)
    XCTAssertEqual(actualOutput, expectOutput)
  }
}
