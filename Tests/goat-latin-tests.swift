@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testToGoatLatin1() {
        let input = "apple"
        let output = "applemaa"
        XCTAssertEqual(Solution().toGoatLatin(input), output)
    }

    func testToGoatLatin2() {
        let input = "I speak Goat Latin"
        let output = "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
        XCTAssertEqual(Solution().toGoatLatin(input), output)
    }

    func testToGoatLatin3() {
        let input = "The quick brown fox jumped over the lazy dog"
        let output = "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
        XCTAssertEqual(Solution().toGoatLatin(input), output)
    }

    func testToGoatLatin4() {
        let input = "a"
        let output = "amaa"
        XCTAssertEqual(Solution().toGoatLatin(input), output)
    }

    func testToGoatLatin5() {
        let input = "Each word consists of lowercase and uppercase letters only"
        let output = "Eachmaa ordwmaaa onsistscmaaaa ofmaaaaa owercaselmaaaaaa andmaaaaaaa uppercasemaaaaaaaa etterslmaaaaaaaaa onlymaaaaaaaaaa"
        XCTAssertEqual(Solution().toGoatLatin(input), output)
    }
}
