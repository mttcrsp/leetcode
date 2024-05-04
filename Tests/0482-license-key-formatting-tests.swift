@testable
import Leetcode
import XCTest

final class LicenseKeyFormattingTests: XCTestCase {
  func testLicenseKeyFormatting1() {
    let input = ("5F3Z-2e-9-w", 4)
    let output = "5F3Z-2E9W"
    XCTAssertEqual(LicenseKeyFormatting().licenseKeyFormatting(input.0, input.1), output)
  }

  func testLicenseKeyFormatting3() {
    let input = ("2-5g-3-J", 2)
    let output = "2-5G-3J"
    XCTAssertEqual(LicenseKeyFormatting().licenseKeyFormatting(input.0, input.1), output)
  }
}
