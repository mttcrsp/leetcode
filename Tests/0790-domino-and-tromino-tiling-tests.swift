@testable
import Leetcode
import Testing

@Suite
struct DominoAndTrominoTilingTests {
  @Test func testNumtilings1() {
    let input = 3
    let output = 5
    #expect(DominoAndTrominoTiling().numTilings(input) == output)
  }

  @Test func testNumtilings2() {
    let input = 1
    let output = 1
    #expect(DominoAndTrominoTiling().numTilings(input) == output)
  }

  @Test func testNumtilings3() {
    let input = 5
    let output = 24
    #expect(DominoAndTrominoTiling().numTilings(input) == output)
  }

  @Test func testNumtilings4() {
    let input = 9
    let output = 569
    #expect(DominoAndTrominoTiling().numTilings(input) == output)
  }

  @Test func testNumtilings5() {
    let input = 30
    let output = 312_342_182
    #expect(DominoAndTrominoTiling().numTilings(input) == output)
  }

  @Test func testNumtilings6() {
    let input = 1000
    let output = 979_232_805
    #expect(DominoAndTrominoTiling().numTilings(input) == output)
  }
}
