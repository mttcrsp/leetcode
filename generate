#!/usr/bin/env swift

import Foundation

struct Response: Codable {
  let data: ResponseData
  struct ResponseData: Codable {
    let question: Question

    struct Question: Codable {
      let questionId: String
      let title: String
      let titleSlug: String
      let content: String
      let difficulty: String
      let exampleTestcases: String
      let categoryTitle: String
      let topicTags: [TopicTag]
      let codeSnippets: [CodeSnippet]

      struct TopicTag: Codable {
        let name: String
        let slug: String
      }

      struct CodeSnippet: Codable {
        let lang: String
        let langSlug: String
        let code: String
      }
    }
  }
}

func main() async {
  let arguments = CommandLine.arguments
  guard arguments.count == 2 else {
    preconditionFailure("USAGE: question <slug>")
  }

  guard let csrfToken = ProcessInfo.processInfo.environment["LEETCODE_CSRF_TOKEN"] else {
    preconditionFailure("Expected a Leetcode CSRF token to be provided as the environment variable LEETCODE_CSRF_TOKEN.")
  }

  let questionTitleSlug = arguments[1]
  let parameters = "{\"operationName\":\"questionData\",\"variables\":{\"titleSlug\":\"\(questionTitleSlug)\"},\"query\":\"query questionData($titleSlug: String!) {\\n  question(titleSlug: $titleSlug) {\\n    questionId\\n    questionFrontendId\\n    boundTopicId\\n    title\\n    titleSlug\\n    content\\n    translatedTitle\\n    translatedContent\\n    isPaidOnly\\n    difficulty\\n    likes\\n    dislikes\\n    isLiked\\n    similarQuestions\\n    exampleTestcases\\n    categoryTitle\\n    contributors {\\n      username\\n      profileUrl\\n      avatarUrl\\n      __typename\\n    }\\n    topicTags {\\n      name\\n      slug\\n      translatedName\\n      __typename\\n    }\\n    companyTagStats\\n    codeSnippets {\\n      lang\\n      langSlug\\n      code\\n      __typename\\n    }\\n __typename\\n  }\\n}\\n\"}"
  let postData = parameters.data(using: .utf8)
  var request = URLRequest(url: URL(string: "https://leetcode.com/graphql")!, timeoutInterval: Double.infinity)
  request.addValue("application/json", forHTTPHeaderField: "Content-Type")
  request.addValue("csrftoken=\(csrfToken)", forHTTPHeaderField: "Cookie")
  request.httpMethod = "POST"
  request.httpBody = postData

  let (data, response): (Data, URLResponse)
  do {
    (data, response) = try await URLSession.shared.data(for: request)
  } catch {
    fatalError("Failed to fetch question data: \(error)")
  }

  guard let httpResponse = response as? HTTPURLResponse else {
    fatalError("Unexpected response type: \(type(of: response))")
  }

  guard httpResponse.statusCode == 200 else {
    fatalError("Unexpected response received: '\(httpResponse.statusCode)'")
  }

  let question: Response.ResponseData.Question
  do {
    let decoder = JSONDecoder()
    let decoded = try decoder.decode(Response.self, from: data)
    question = decoded.data.question
  } catch {
    fatalError("Failed to decode question data: \(error)")
  }

  guard let swiftSnippet = question.codeSnippets.first(where: { $0.langSlug == "swift" }) else {
    fatalError("No Swift specific code snippet found.")
  }

  var questionStructName = questionTitleSlug.capitalized
  for rhsIndex in questionStructName.indices.dropFirst().reversed() {
    let lhsIndex = questionStructName.index(before: rhsIndex)
    let rhs = questionStructName[rhsIndex]
    let lhs = questionStructName[lhsIndex]
    if lhs == "-" {
      questionStructName.replaceSubrange(lhsIndex ... rhsIndex, with: rhs.uppercased())
    }
  }

  let questionFunctionNameRegex = try! NSRegularExpression(pattern: #"func (?<target>\w+)\("#)

  let stringRange = NSRange(location: 0, length: swiftSnippet.code.utf16.count)
  guard let matchRange = questionFunctionNameRegex.firstMatch(in: swiftSnippet.code, range: stringRange) else {
    fatalError("No function name found in code snippet.")
  }

  let groupRange = matchRange.range(withName: "target")
  guard let swiftGroupRange = Range(groupRange, in: swiftSnippet.code) else {
    fatalError("No function name found in code snippet.")
  }

  let questionFunctionName = swiftSnippet.code[swiftGroupRange]
  let questionSnippet = swiftSnippet.code
    .replacingOccurrences(of: "class Solution", with: "/// https://leetcode.com/problems/\(questionTitleSlug)/\nstruct \(questionStructName)")

  var paddedQuestionId = question.questionId
  if paddedQuestionId.count < 4 {
    paddedQuestionId = String(repeating: "0", count: 4 - paddedQuestionId.count) + paddedQuestionId
  }

  let fileManager = FileManager.default
  let path = fileManager.currentDirectoryPath as NSString
  let testsPath = path.appendingPathComponent("Tests")
  let sourcesPath = path.appendingPathComponent("Sources")

  let sourceName = "\(paddedQuestionId)-\(questionTitleSlug).swift"
  let sourcePath = (sourcesPath as NSString).appendingPathComponent(sourceName)
  let sourceContents = Data(questionSnippet.utf8)

  let minimumExampleTestCases = !question.exampleTestcases.isEmpty
    ? question.exampleTestcases
    : "0"

  let testFunctionName = "test\(questionFunctionName.capitalized)"
  let testName = "\(paddedQuestionId)-\(questionTitleSlug)-tests.swift"
  let testPath = (testsPath as NSString).appendingPathComponent(testName)
  let testCases = minimumExampleTestCases.split(separator: "\n").enumerated().map { i, example -> String in
    var testCaseName = testFunctionName
    let testCaseNameInitial = testCaseName.removeFirst()
    testCaseName = "test\(testCaseNameInitial.uppercased())\(testCaseName)\(i + 1)"
    return """
      func \(testCaseName)() {
        let input = \(example)
        let output = 0
        XCTAssertEqual(\(questionStructName)().\(questionFunctionName)(input), output)
      }
    """
  }.joined(separator: "\n\n")

  let testContents = Data("""
    @testable
    import Leetcode
    import XCTest

    final class \(questionStructName)Tests: XCTestCase {
    \(testCases)
    }
    """.utf8
  )

  guard fileManager.createFile(atPath: sourcePath, contents: sourceContents),
        fileManager.createFile(atPath: testPath, contents: testContents)
  else {
    fatalError("Unable to generate files for the specified question.")
  }
}

let semaphore = DispatchSemaphore(value: 0)
Task {
  defer { semaphore.signal() }
  await main()
}

semaphore.wait()
