struct FindKthBitInNthBinaryString {
  func findKthBit(_ n: Int, _ k: Int) -> Character {
    var progress = [false]
    var iteration = 1
    while progress.count <= k {
      progress += [true] + Array(progress.reversed().map { !$0 })
      iteration += 1
    }

    var bit = progress[k - 1]
    if n - iteration % 2 == 0 {
      bit.toggle()
    }
    return bit ? "1" : "0"
  }
}
