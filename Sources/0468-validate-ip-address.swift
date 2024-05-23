/// https://leetcode.com/problems/validate-ip-address/
struct ValidateIpAddress {
  private typealias Scanner = (String, String.Index) -> String.Index?

  func validIPAddress(_ queryIP: String) -> String {
    if scanIPv4(queryIP) {
      "IPv4"
    } else if scanIPv6(queryIP) {
      "IPv6"
    } else {
      "Neither"
    }
  }

  private func scanIPv6(_ queryIP: String) -> Bool {
    let scanners = [
      scanIPv6Component, scanColumn,
      scanIPv6Component, scanColumn,
      scanIPv6Component, scanColumn,
      scanIPv6Component, scanColumn,
      scanIPv6Component, scanColumn,
      scanIPv6Component, scanColumn,
      scanIPv6Component, scanColumn,
      scanIPv6Component,
    ]
    return scanComposition(scanners, from: queryIP, startingAt: queryIP.startIndex) == queryIP.endIndex
  }

  private func scanIPv4(_ queryIP: String) -> Bool {
    let scanners: [Scanner] = [
      scanIPv4Component, scanDot,
      scanIPv4Component, scanDot,
      scanIPv4Component, scanDot,
      scanIPv4Component,
    ]
    return scanComposition(scanners, from: queryIP, startingAt: queryIP.startIndex) == queryIP.endIndex
  }

  private func scanComposition(_ scanners: [Scanner], from string: String, startingAt startIndex: String.Index) -> String.Index? {
    var index: String.Index = startIndex
    for scanner in scanners {
      if let nextIndex = scanner(string, index) {
        index = nextIndex
      } else {
        return nil
      }
    }
    return index
  }

  private func scanDot(from string: String, startingAt startIndex: String.Index) -> String.Index? {
    scanCharacter(".", from: string, startingAt: startIndex)
  }

  private func scanColumn(from string: String, startingAt startIndex: String.Index) -> String.Index? {
    scanCharacter(":", from: string, startingAt: startIndex)
  }

  private func scanCharacter(_ character: Character, from queryIP: String, startingAt startIndex: String.Index) -> String.Index? {
    if startIndex < queryIP.endIndex, queryIP[startIndex] == character {
      queryIP.index(after: startIndex)
    } else {
      nil
    }
  }

  private func scanIPv6Component(from string: String, startingAt startIndex: String.Index) -> String.Index? {
    var result = ""
    var index = startIndex
    while index < string.endIndex, string[index].isHexDigit, string.distance(from: startIndex, to: index) < 4 {
      result.append(string[index])
      index = string.index(after: index)
    }

    if Int(result, radix: 16) != nil {
      return index
    } else {
      return nil
    }
  }

  private func scanIPv4Component(from string: String, startingAt startIndex: String.Index) -> String.Index? {
    var result = ""
    var index = startIndex
    while index < string.endIndex, string[index].isNumber, string.distance(from: startIndex, to: index) < 3 {
      result.append(string[index])
      index = string.index(after: index)
    }

    if result.first == "0", result.count > 1 {
      return nil
    } else if let integer = Int(result), 0 ... 255 ~= integer {
      return index
    } else {
      return nil
    }
  }
}
