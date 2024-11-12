/// https://leetcode.com/problems/most-beautiful-item-for-each-query/
struct MostBeautifulItemForEachQuery {
  func maximumBeauty(_ items: [[Int]], _ queries: [Int]) -> [Int] {
    let items = items.sorted { lhs, rhs in
      lhs[0] == rhs[0] ? lhs[1] < rhs[1] : lhs[0] < rhs[0]
    }

    var maxBeauty = 0
    var itemIndex = 0
    var result = [Int](repeating: 0, count: queries.count)
    for (index, query) in queries.enumerated().sorted(by: { $0.element < $1.element }) {
      while itemIndex < items.count, items[itemIndex][0] <= query {
        maxBeauty = max(maxBeauty, items[itemIndex][1])
        itemIndex += 1
      }

      result[index] = maxBeauty
    }

    return result
  }
}
