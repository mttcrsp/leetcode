#!/usr/bin/env swift

import Foundation

let arguments = CommandLine.arguments

guard arguments.count > 1 else {
  fatalError("USAGE: problem <url> <test_function_name>? <test_cases_count>?")
}

guard let url = URL(string: arguments[1]) else {
  fatalError("Expected a Leetcode problem URL to be provided as the first parameter.")
}

let testFunctionName: String
if arguments.count > 2 {
  testFunctionName = arguments[2]
} else {
  testFunctionName = "<#func#>"
}

let testCasesCount: Int
if arguments.count > 3, let count = Int(arguments[3]) {
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

let sourceName = "\(problemFileName).swift"
let sourcePath = (sourcesPath as NSString).appendingPathComponent(sourceName)
let sourceContents = Data("""
struct \(problemName) {

}
""".utf8)

let testName = "\(problemFileName)-tests.swift"
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

var process = Process()
process.launchPath = "/usr/bin/env"
process.arguments = ["swift", "package", "generate-xcodeproj"]
process.launch()
process.waitUntilExit()

process = Process()
process.launchPath = "/usr/bin/env"
process.arguments = ["xed", "."]
process.launch()
process.waitUntilExit()
