/// https://leetcode.com/problems/product-of-array-except-self/
struct ProductOfArrayExceptSelf {
  func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result = [Int](repeating: 1, count: nums.count)
    var prefixProduct = 1
    var suffixProduct = 1

    for i in nums.indices {
      result[i] = prefixProduct
      prefixProduct *= nums[i]
    }

    for i in nums.indices.reversed() {
      result[i] *= suffixProduct
      suffixProduct *= nums[i]
    }

    return result
  }
}
