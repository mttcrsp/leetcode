struct PushDominoes {
  private struct Push {
    let direction: Character
    let index: Int
  }

  func pushDominoes(_ initialStates: String) -> String {
    var states = [Character](initialStates)

    func setState(_ character: Character, in range: Range<Int>) {
      for i in range {
        states[i] = character
      }
    }

    var pushes = states.enumerated().compactMap { i, direction in
      direction == "." ? nil : Push(direction: direction, index: i)
    }

    while pushes.first?.direction == "L" {
      let push = pushes.removeFirst()
      setState("L", in: 0 ..< push.index)
    }

    while pushes.last?.direction == "R" {
      let push = pushes.removeLast()
      setState("R", in: push.index + 1 ..< states.count)
    }

    for i in pushes.indices.dropLast() {
      let lhs = pushes[i]
      let rhs = pushes[i + 1]

      switch (lhs.direction, rhs.direction) {
      case ("L", "L"), ("R", "R"):
        setState(lhs.direction, in: lhs.index + 1 ..< rhs.index)
      case ("R", "L"):
        let distance = (rhs.index - lhs.index - 1) / 2
        setState("R", in: lhs.index + 1 ..< lhs.index + distance + 1)
        setState("L", in: rhs.index - distance ..< rhs.index)
      default:
        continue
      }
    }

    return String(states)
  }
}
