@testable
import Leetcode
import XCTest

final class UniqueEmailAddressesTests: XCTestCase {
  func testNumuniqueemails1() {
    let input = ["test.email+alex@leetcode.com", "test.e.mail+bob.cathy@leetcode.com", "testemail+david@lee.tcode.com"]
    let output = 2
    XCTAssertEqual(UniqueEmailAddresses().numUniqueEmails(input), output)
  }

  func testNumuniqueemails2() {
    let input = ["a@leetcode.com", "b@leetcode.com", "c@leetcode.com"]
    let output = 3
    XCTAssertEqual(UniqueEmailAddresses().numUniqueEmails(input), output)
  }
}
