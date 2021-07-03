#!/usr/bin/env swift

import Foundation

let arguments = CommandLine.arguments

guard arguments.count > 2 else {
  fatalError("USAGE: problem <url> <problem_number> <test_function_name>? <test_cases_count>?")
}

guard let url = URL(string: arguments[1]) else {
  fatalError("Expected a Leetcode problem URL to be provided as the first parameter.")
}

guard Int(arguments[2]) != nil else {
  fatalError("Expected a Leetcode problem number to provided as the second parameter")
}

let testFunctionName: String
if arguments.count > 3 {
  testFunctionName = arguments[3]
} else {
  testFunctionName = "<#func#>"
}

let testCasesCount: Int
if arguments.count > 4, let count = Int(arguments[4]) {
  testCasesCount = count
} else {
  testCasesCount = 1
}

let fileManager = FileManager.default
let path = fileManager.currentDirectoryPath as NSString
let testsPath = path.appendingPathComponent("Tests")
let sourcesPath = path.appendingPathComponent("Sources")

guard fileManager.fileExists(atPath: testsPath),
      fileManager.fileExists(atPath: sourcesPath)
else {
  fatalError("Unable to locate the Sources/ and Tests/ folders. This script should be executed from the root of the project.")
}

let problemFileName = url.lastPathComponent
var problemName = problemFileName.capitalized
for rhsIndex in problemName.indices.dropFirst().reversed() {
  let lhsIndex = problemName.index(before: rhsIndex)
  let rhs = problemName[rhsIndex]
  let lhs = problemName[lhsIndex]
  if lhs == "-" {
    problemName.replaceSubrange(lhsIndex ... rhsIndex, with: rhs.uppercased())
  }
}

let problemNumber = arguments[2].description
let paddedProblemNumber = problemNumber.padding(toLength: 4, withPad: "0", startingAt: 0)

let sourceName = "\(paddedProblemNumber)-\(problemFileName).swift"
let sourcePath = (sourcesPath as NSString).appendingPathComponent(sourceName)
let sourceContents = Data("""
struct \(problemName) {

}
""".utf8)

let testName = "\(paddedProblemNumber)-\(problemFileName)-tests.swift"
let testPath = (testsPath as NSString).appendingPathComponent(testName)
let testCases = (1 ... testCasesCount).map { i in
  var testCaseName = testFunctionName
  let testCaseNameInitial = testCaseName.removeFirst()
  testCaseName = "test\(testCaseNameInitial.uppercased())\(testCaseName)\(i)"
  return """
    func \(testCaseName)() {
      let input = 0
      let output = 0
      XCTAssertEqual(\(problemName)().\(testFunctionName)(input), output)
    }
  """
}.joined(separator: "\n\n")

let testContents = Data("""
@testable
import Leetcode
import XCTest

final class \(problemName)Tests: XCTestCase {
\(testCases)
}
""".utf8)

guard fileManager.createFile(atPath: sourcePath, contents: sourceContents),
      fileManager.createFile(atPath: testPath, contents: testContents)
else {
  fatalError("Unable to generate files for the specified problem.")
}
