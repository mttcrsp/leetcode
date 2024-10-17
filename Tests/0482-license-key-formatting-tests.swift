@testable
import Leetcode
import Testing

@Suite
struct LicenseKeyFormattingTests {
  @Test func testLicenseKeyFormatting1() {
    let input = ("5F3Z-2e-9-w", 4)
    let output = "5F3Z-2E9W"
    #expect(LicenseKeyFormatting().licenseKeyFormatting(input.0, input.1) == output)
  }

  @Test func testLicenseKeyFormatting3() {
    let input = ("2-5g-3-J", 2)
    let output = "2-5G-3J"
    #expect(LicenseKeyFormatting().licenseKeyFormatting(input.0, input.1) == output)
  }
}
