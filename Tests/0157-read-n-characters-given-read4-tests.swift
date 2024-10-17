@testable
import Leetcode
import Testing

@Suite
struct ReadNCharactersGivenRead4Tests {
  @Test func testRead1() {
    run(withString: "abc", count: 4, expectCount: 3)
  }

  @Test func testRead2() {
    run(withString: "abcde", count: 5, expectCount: 5)
  }

  @Test func testRead3() {
    run(withString: "abcdABCD1234", count: 12, expectCount: 12)
  }

  @Test func testRead4() {
    run(withString: "leetcode", count: 5, expectCount: 5)
  }

  private func run(withString string: String, count: Int, expectCount: Int, file _: StaticString = #filePath, line _: UInt = #line) {
    var buffer = [Character](repeating: "-", count: count)
    let reader = ReadNCharactersGivenRead4(string: string)
    let actualCount = reader.read(&buffer, buffer.count)
    let actualOutput = Array(buffer.prefix(actualCount))
    let expectOutput = Array(string.prefix(count))
    #expect(actualCount == expectCount)
    #expect(actualOutput == expectOutput)
  }
}
