@testable
import Leetcode
import XCTest

final class AsteroidCollisionTests: XCTestCase {
  func testAsteroidCollision1() {
    let input = [5, 10, -5]
    let output = [5, 10]

    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }

  func testAsteroidCollision2() {
    let input = [8, -8]
    let output = [] as [Int]
    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }

  func testAsteroidCollision3() {
    let input = [10, 2, -5]
    let output = [10]
    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }

  func testAsteroidCollision4() {
    let input = [12, 10, 2, -5, -11]
    let output = [12]
    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }

  func testAsteroidCollision5() {
    let input = [-5, -11]
    let output = [-5, -11]
    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }

  func testAsteroidCollision6() {
    let input = [2, 10, 8, -3, -9]
    let output = [2, 10]
    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }

  func testAsteroidCollision7() {
    let input = [-2, -1, 1, 2]
    let output = [-2, -1, 1, 2]
    XCTAssertEqual(AsteroidCollision().asteroidCollision(input), output)
  }
}
