@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testFreqAlphabets1() {
        let input = "10#11#12"
        let output = "jkab"
        XCTAssertEqual(Solution().freqAlphabets(input), output)
    }

    func testFreqAlphabets2() {
        let input = "1326#"
        let output = "acz"
        XCTAssertEqual(Solution().freqAlphabets(input), output)
    }

    func testFreqAlphabets3() {
        let input = "25#"
        let output = "y"
        XCTAssertEqual(Solution().freqAlphabets(input), output)
    }

    func testFreqAlphabets4() {
        let input = "12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#"
        let output = "abcdefghijklmnopqrstuvwxyz"
        XCTAssertEqual(Solution().freqAlphabets(input), output)
    }

    func testFreqAlphabets5() {
        let input = ""
        let output = ""
        XCTAssertEqual(Solution().freqAlphabets(input), output)
    }
}
