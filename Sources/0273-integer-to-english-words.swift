struct IntegerToEnglishWords {
  func numberToWords(_ value: Int) -> String {
    numberToWordsArray(value).joined(separator: " ")
  }

  private func numberToWordsArray(_ value: Int) -> [String] {
    guard value != 0 else { return [digit(value)] }

    var value = value, components: [String] = []

    for group in Group.allCases {
      let groupValue = value % 1000

      if groupValue != 0 {
        var groupComponents = hundreds(groupValue)
        if let groupEnglishWord = group.englishWord {
          groupComponents.append(groupEnglishWord)
        }
        components.insert(contentsOf: groupComponents, at: 0)
      }

      value /= 1000
    }

    return components
  }

  private func hundreds(_ value: Int) -> [String] {
    precondition(value < 1000 && value >= 0, "\(#function) \(value)")

    let digit1 = value % 10
    let digit2 = (value / 10) % 10
    let digit3 = (value / 100) % 10

    switch (digit3, digit2, digit1) {
    case (_, 0, 0): return [digit(digit3), "Hundred"]
    case (0, _, _): return tens(value % 100)
    case (_, _, _): return [digit(digit3), "Hundred"] + tens(value % 100)
    }
  }

  private func tens(_ value: Int) -> [String] {
    precondition(value < 100 && value >= 0, "\(#function) \(value)")

    let digit1 = value % 10
    let digit2 = (value / 10) % 10

    switch (digit2, digit1) {
    case (1, _): return [teen(digit1)]
    case (0, _): return [digit(digit1)]
    case (_, 0): return [roundTen(digit2)]
    case (_, _): return [roundTen(digit2), digit(digit1)]
    }
  }

  private func roundTen(_ value: Int) -> String {
    precondition(value < 10 && value > 0, "\(#function) \(value)")

    switch value {
    case 1: return "Ten"
    case 2: return "Twenty"
    case 3: return "Thirty"
    case 4: return "Forty"
    case 5: return "Fifty"
    case 6: return "Sixty"
    case 7: return "Seventy"
    case 8: return "Eighty"
    case 9: return "Ninety"
    default: fatalError()
    }
  }

  private func teen(_ value: Int) -> String {
    precondition(value < 10 && value >= 0, "\(#function) \(value)")

    switch value {
    case 0: return "Ten"
    case 1: return "Eleven"
    case 2: return "Twelve"
    case 3: return "Thirteen"
    case 4: return "Fourteen"
    case 5: return "Fifteen"
    case 6: return "Sixteen"
    case 7: return "Seventeen"
    case 8: return "Eighteen"
    case 9: return "Nineteen"
    default: fatalError()
    }
  }

  private func digit(_ value: Int) -> String {
    precondition(value < 10 && value >= 0, "\(#function) \(value)")

    switch value {
    case 0: return "Zero"
    case 1: return "One"
    case 2: return "Two"
    case 3: return "Three"
    case 4: return "Four"
    case 5: return "Five"
    case 6: return "Six"
    case 7: return "Seven"
    case 8: return "Eight"
    case 9: return "Nine"
    default: fatalError()
    }
  }

  private enum Group: CaseIterable {
    case hundreds, thousands, millions, billions

    var englishWord: String? {
      switch self {
      case .hundreds: return nil
      case .thousands: return "Thousand"
      case .millions: return "Million"
      case .billions: return "Billion"
      }
    }
  }
}
