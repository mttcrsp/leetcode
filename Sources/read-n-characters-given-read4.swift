class ReadNCharactersGivenRead4: Reader4 {
  func read(_ buffer: inout [Character], _ n: Int) -> Int {
    var buffer4 = [Character](repeating: "-", count: 4)
    var copiedChars = 0, readChars = 4

    while copiedChars < n, readChars == 4 {
      readChars = read4(&buffer4)

      for i in 0 ..< readChars {
        if copiedChars == n {
          return copiedChars
        }

        buffer[copiedChars] = buffer4[i]
        copiedChars += 1
      }
    }

    return copiedChars
  }
}

class Reader4 {
  private var string: String

  init(string: String) {
    self.string = string
  }

  func read4(_ buffer: inout [Character]) -> Int {
    let removed = string.prefix(4)
    string.removeFirst(removed.count)
    for (i, character) in removed.enumerated() {
      buffer[i] = character
    }
    return removed.count
  }
}
