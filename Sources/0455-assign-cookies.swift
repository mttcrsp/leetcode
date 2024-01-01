/// https://leetcode.com/problems/assign-cookies/
struct AssignCookies {
  func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    let greedFactors = g.sorted()
    let cookieSizes = s.sorted()
    var greedIndex = 0
    var cookieIndex = 0
    while greedIndex < g.count, cookieIndex < s.count {
      defer { cookieIndex += 1 }
      if cookieSizes[cookieIndex] >= greedFactors[greedIndex] {
        greedIndex += 1
      }
    }
    return greedIndex
  }
}
