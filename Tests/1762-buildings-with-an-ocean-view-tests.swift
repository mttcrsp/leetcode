@testable
import Leetcode
import Testing

@Suite
struct BuildingsWithAnOceanViewTests {
  @Test func testBuildingsWithAnOceanView1() {
    let input = [4, 2, 3, 1]
    let output = [0, 2, 3]
    #expect(BuildingsWithAnOceanView().findBuildings(input) == output)
  }

  @Test func testBuildingsWithAnOceanView2() {
    let input = [4, 3, 2, 1]
    let output = [0, 1, 2, 3]
    #expect(BuildingsWithAnOceanView().findBuildings(input) == output)
  }

  @Test func testBuildingsWithAnOceanView3() {
    let input = [1, 3, 2, 4]
    let output = [3]
    #expect(BuildingsWithAnOceanView().findBuildings(input) == output)
  }
}
