struct CheckIfBinaryStringHasAtMostOneSegmentOfOnes {
  func checkOnesSegment(_ string: String) -> Bool {
    enum State {
      case initial
      case foundSegmentStart
      case foundSegmentEnd
    }

    var state: State = .initial
    for character in string {
      switch (state, character) {
      case (.initial, "1"):
        state = .foundSegmentStart
      case (.foundSegmentStart, "0"):
        state = .foundSegmentEnd
      case (.initial, "0"), (.foundSegmentStart, "1"), (.foundSegmentEnd, "0"):
        break
      case (.foundSegmentEnd, "1"):
        return false
      case (_, _):
        preconditionFailure("Invalid character found '\(character)'")
      }
    }

    return true
  }
}
