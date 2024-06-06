/// https://leetcode.com/problems/design-tic-tac-toe/description/
class TicTacToe {
  private var rows: [Int]
  private var cols: [Int]
  private var diags = (0, 0)

  init(_ n: Int) {
    rows = [Int](repeating: 0, count: n)
    cols = [Int](repeating: 0, count: n)
  }

  func move(_ row: Int, _ col: Int, _ player: Int) -> Int {
    var values: [Int] = []
    let delta = player == 1 ? +1 : -1
    rows[row] += delta; values.append(rows[row])
    cols[col] += delta; values.append(cols[col])
    if row == col {
      diags.0 += delta; values.append(diags.0)
    }
    if rows.count-1-row == col {
      diags.1 += delta; values.append(diags.1)
    }

    for value in values {
      if value == rows.count {
        return 1
      } else if value == -rows.count {
        return 2
      }
    }

    return 0
  }
}
