import HeapModule

/// https://leetcode.com/problems/sum-of-subarray-minimums/
struct SumOfSubarrayMinimums {
  func sumSubarrayMins(_ arr: [Int]) -> Int {
    let arr = [0]+arr
    var result = [Int](repeating: 0, count: arr.count)
    var stack = [0]
    for i in arr.indices {
      while arr[i] < arr[stack[stack.count-1]] {
        stack.removeLast()
      }

      let j = stack[stack.count-1]
      result[i] = result[j]+(i-j)*arr[i]
      stack.append(i)
    }

    return result.reduce(0) { total, element in
      (total+element)%1_000_000_007
    }
  }
}
