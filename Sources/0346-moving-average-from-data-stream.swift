/// https://leetcode.com/problems/moving-average-from-data-stream/
class MovingAverage {
  private var sum = 0
  private var index = 0
  private var array: [Int?]

  init(_ size: Int) {
    array = [Int?](repeating: nil, count: size)
  }

  func next(_ newValue: Int) -> Double {
    if let oldValue = array[index] {
      sum -= oldValue
    }
    sum += newValue

    array[index] = newValue
    index = (index+1)%array.count

    let count = array[array.count-1] == nil ? index : array.count
    return Double(sum)/Double(count)
  }
}
