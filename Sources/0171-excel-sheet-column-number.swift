/// https://leetcode.com/problems/excel-sheet-column-number/
import Foundation

struct ExcelSheetColumnNumber {
  func titleToNumber(_ string: String) -> Int {
    let base: Double = Character.lastExcelCharacter.excelValue

    var result: Double = 0

    for (offset, character) in string.reversed().enumerated() {
      result += pow(base, Double(offset)) * character.excelValue
    }

    return Int(result)
  }
}

private extension Character {
  var excelValue: Double {
    Double(asciiValue! - Character.firstExcelCharacter.asciiValue!) + 1
  }

  static var firstExcelCharacter: Character {
    "A"
  }

  static var lastExcelCharacter: Character {
    "Z"
  }
}
