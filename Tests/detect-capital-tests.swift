@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testDetectCapitalUse1() {
        let input = "facebook"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse2() {
        let input = "Facebook"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse3() {
        let input = "FACEBOOK"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse4() {
        let input = "Fb"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse5() {
        let input = "Fb"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse6() {
        let input = "F"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse7() {
        let input = "Fb"
        let output = true
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse8() {
        let input = "bF"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse9() {
        let input = "fACEBOOK"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse10() {
        let input = "facebooK"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse11() {
        let input = "fAcebook"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse12() {
        let input = "faceboOk"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse13() {
        let input = "fAcEbOoK"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }

    func testDetectCapitalUse14() {
        let input = "FaCeBoOk"
        let output = false
        XCTAssertEqual(Solution().detectCapitalUse(input), output)
    }
}
