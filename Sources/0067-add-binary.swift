struct AddBinary {
  func addBinary(_ a: String, _ b: String) -> String {
    let a = Array(a.reversed())
    let b = Array(b.reversed())

    var result = ""
    var carry = 0

    for i in 0 ..< max(a.count, b.count) {
      var sum = carry
      if i < a.count, a[i] == "1" {
        sum += 1
      }
      if i < b.count, b[i] == "1" {
        sum += 1
      }

      result.append("\(sum % 2)")
      carry = sum / 2
    }

    if carry == 1 {
      result.append("1")
    }

    return String(result.reversed())
  }
}
