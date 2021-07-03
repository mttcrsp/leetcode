struct RepeatedSubstringPattern {
  func repeatedSubstringPattern(_ s: String) -> Bool {
    guard s.count > 1 else { return false }

    var repeatedS = (s + s)
    repeatedS.removeFirst()
    repeatedS.removeLast()
    return repeatedS.contains(s)
  }
}
