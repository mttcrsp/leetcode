@testable
import Leetcode
import Testing

@Suite
struct ValidateIpAddressTests {
  @Test func testValidIPAddress1() {
    let input = "192.168.1.1"
    let output = "IPv4"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress2() {
    let input = "192.168.1.0"
    let output = "IPv4"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress3() {
    let input = "192.168.01.1"
    let output = "Neither"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress4() {
    let input = "192.168.1.00"
    let output = "Neither"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress5() {
    let input = "192.168@1.1"
    let output = "Neither"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress6() {
    let input = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
    let output = "IPv6"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress7() {
    let input = "2001:db8:85a3:0:0:8A2E:0370:7334"
    let output = "IPv6"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress8() {
    let input = "2001:0db8:85a3::8A2E:037j:7334"
    let output = "Neither"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }

  @Test func testValidIPAddress9() {
    let input = "02001:0db8:85a3:0000:0000:8a2e:0370:7334"
    let output = "Neither"
    #expect(ValidateIpAddress().validIPAddress(input) == output)
  }
}
