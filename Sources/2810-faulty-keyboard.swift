/// https://leetcode.com/problems/faulty-keyboard/
struct FaultyKeyboard {
  func finalString(_ s: String) -> String {
    var tail = ""
    var head = ""
    for character in s {
      if character == "i" {
        swap(&head, &tail)
      } else {
        head.append(character)
      }
    }
    return tail.reversed()+head
  }
}
