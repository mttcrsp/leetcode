struct QueriesOnAPermutationWithKey {
  func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
    var state = Array(1 ... m)
    var result: [Int] = []
    for query in queries {
      // You can keep track of the current maximum query and use indexing rather
      // than linear search for queries greater than the current maximum query.
      // This would not improve complexity though.
      if let index = state.firstIndex(of: query) {
        result.append(index)
        // With this linear search approach a list is a more appropriate data
        // structure. This is because moving an item to the head of a list if a
        // O(1) operation rather than this O(n).
        state.remove(at: index)
        state.insert(query, at: 0)
      }
    }
    return result
  }
}
