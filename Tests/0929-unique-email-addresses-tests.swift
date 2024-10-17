@testable
import Leetcode
import Testing

@Suite
struct UniqueEmailAddressesTests {
  @Test func testNumuniqueemails1() {
    let input = ["test.email+alex@leetcode.com", "test.e.mail+bob.cathy@leetcode.com", "testemail+david@lee.tcode.com"]
    let output = 2
    #expect(UniqueEmailAddresses().numUniqueEmails(input) == output)
  }

  @Test func testNumuniqueemails2() {
    let input = ["a@leetcode.com", "b@leetcode.com", "c@leetcode.com"]
    let output = 3
    #expect(UniqueEmailAddresses().numUniqueEmails(input) == output)
  }
}
