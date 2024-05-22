/// https://leetcode.com/problems/add-strings/
struct AddStrings {
  func addStrings(_ num1: String, _ num2: String) -> String {
    let num1 = Array(num1)
    let num2 = Array(num2)

    var result = ""
    var carry = false
    for i in 0 ..< max(num1.count, num2.count) {
      let index1 = num1.count-1-i
      let index2 = num2.count-1-i
      let character1 = index1 >= 0 ? num1[index1] : nil
      let character2 = index2 >= 0 ? num2[index2] : nil
      let digit1 = character1.flatMap { Int(String($0)) } ?? 0
      let digit2 = character2.flatMap { Int(String($0)) } ?? 0
      var newDigit = digit1+digit2
      if carry { newDigit += 1 }
      result += "\(newDigit%10)"
      carry = newDigit > 9
    }

    if carry {
      result += "1"
    }

    return String(result.reversed())
  }
}
