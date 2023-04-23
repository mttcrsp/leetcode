@testable
import Leetcode
import XCTest

final class WordSearchIiTests: XCTestCase {
  func testTestFindwords1() {
    let input = (
      [
        ["o","a","a","n"],
        ["e","t","a","e"],
        ["i","h","k","r"],
        ["i","f","l","v"]
      ] as [[Character]],
      ["oath","pea","eat","rain"]
    )
    let output = ["eat","oath"]
    XCTAssertEqual(Set(WordSearchIi().findWords(input.0, input.1)), Set(output))
  }

  func testTestFindwords2() {
    let input = (
      [
        ["a","b"],
        ["c","d"]
      ] as [[Character]],
      ["abcb"]
    )
    let output = [] as [String]
    XCTAssertEqual(Set(WordSearchIi().findWords(input.0, input.1)), Set(output))
  }
  
  func testTestFindwords3() {
    let input = (
      [
        ["o","a","a","n"],
        ["e","t","a","e"],
        ["i","h","k","r"],
        ["i","f","l","v"]
      ] as [[Character]],
      ["oath","pea","eat","rain","hklf", "hf"]
    )
    let output = ["oath","eat","hklf","hf"]
    XCTAssertEqual(Set(WordSearchIi().findWords(input.0, input.1)), Set(output))
  }
}
