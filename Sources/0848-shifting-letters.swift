struct ShiftingLetters {
  func shiftingLetters(_ s: String, _ shifts: [Int]) -> String {
    var shifts = shifts
    for i in shifts.indices.reversed().dropFirst() {
      shifts[i] += shifts[i + 1]
    }

    var result = Array(s)
    for (offset, (character, shift)) in zip(result, shifts).enumerated() {
      result[offset] = character.shifted(by: shift)
    }
    return String(result)
  }
}

private extension Character {
  func shifted(by shift: Int) -> Character {
    let curr = (Int(asciiValue!) - 97) % 26
    let next = ((curr + shift) % 26) + 97
    return Character(UnicodeScalar(next)!)
  }
}
