struct ExcelSheetColumnTitle {
  func convertToTitle(_ n: Int) -> String {
    guard let value1 = Character("A").asciiValue,
          let value2 = Character("Z").asciiValue
    else {
      fatalError()
    }

    var letters = (value1 ... value2).map { value in
      Character(UnicodeScalar(value))
    }

    letters = [letters.last!] + letters.dropLast()

    let radix = letters.count
    var remainder = n
    var result = ""

    while remainder > 0 {
      let index = remainder % radix
      result.insert(letters[index], at: result.startIndex)
      remainder /= radix
      if remainder == 1, index == 0 { break }
      if index == 0 { remainder -= 1 }
    }

    return result
  }
}
