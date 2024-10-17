@testable
import Leetcode
import Testing

@Suite
struct FairCandySwapTests {
  @Test func testFairCandySwap1() {
    let input = ([1, 1], [2, 2])
    let output = [1, 2]
    #expect(FairCandySwap().fairCandySwap(input.0, input.1) == output)
  }

  @Test func testFairCandySwap2() {
    let input = ([1, 2], [2, 3])
    let output = FairCandySwap().fairCandySwap(input.0, input.1)
    #expect(output == [1, 2] || output == [2, 3])
  }

  @Test func testFairCandySwap3() {
    let input = ([2], [1, 3])
    let output = [2, 3]
    #expect(FairCandySwap().fairCandySwap(input.0, input.1) == output)
  }

  @Test func testFairCandySwap4() {
    let input = ([1, 2, 5], [2, 4])
    let output = [5, 4]
    #expect(FairCandySwap().fairCandySwap(input.0, input.1) == output)
  }
}
