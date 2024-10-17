@testable
import Leetcode
import Testing

@Suite
struct GoatLatinTests {
  @Test func testToGoatLatin1() {
    let input = "apple"
    let output = "applemaa"
    #expect(GoatLatin().toGoatLatin(input) == output)
  }

  @Test func testToGoatLatin2() {
    let input = "I speak Goat Latin"
    let output = "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
    #expect(GoatLatin().toGoatLatin(input) == output)
  }

  @Test func testToGoatLatin3() {
    let input = "The quick brown fox jumped over the lazy dog"
    let output = "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
    #expect(GoatLatin().toGoatLatin(input) == output)
  }

  @Test func testToGoatLatin4() {
    let input = "a"
    let output = "amaa"
    #expect(GoatLatin().toGoatLatin(input) == output)
  }

  @Test func testToGoatLatin5() {
    let input = "Each word consists of lowercase and uppercase letters only"
    let output = "Eachmaa ordwmaaa onsistscmaaaa ofmaaaaa owercaselmaaaaaa andmaaaaaaa uppercasemaaaaaaaa etterslmaaaaaaaaa onlymaaaaaaaaaa"
    #expect(GoatLatin().toGoatLatin(input) == output)
  }
}
