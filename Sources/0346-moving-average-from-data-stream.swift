/// https://leetcode.com/problems/moving-average-from-data-stream/
class MovingAverage {
  private var buffer: [Int] = []
  private var index = 0
  private var sum = 0
  private let size: Int

  init(_ size: Int) {
    self.size = size
  }

  func next(_ val: Int) -> Double {
    if buffer.count < size {
      buffer.append(val)
      sum += val
    } else {
      sum -= buffer[index]
      buffer[index] = val
      sum += buffer[index]
      index = (index+1)%size
    }

    return Double(sum)/Double(buffer.count)
  }
}
