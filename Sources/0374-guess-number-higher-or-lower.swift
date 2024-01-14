/// https://leetcode.com/problems/guess-number-higher-or-lower/
class GuessNumberHigherOrLower: GuessGame {
  func guessNumber(_ n: Int) -> Int {
    var lhs = 1
    var rhs = n
    while lhs < rhs {
      let mid = (lhs+rhs)/2
      let result = guess(mid)
      if result == -1 {
        rhs = mid-1
      } else if result == 1 {
        lhs = mid+1
      } else {
        return mid
      }
    }

    return lhs
  }
}

class GuessGame {
  let num: Int

  init(num: Int) {
    self.num = num
  }

  func guess(_ guess: Int) -> Int {
    if guess > num {
      -1
    } else if guess < num {
      1
    } else {
      0
    }
  }
}
