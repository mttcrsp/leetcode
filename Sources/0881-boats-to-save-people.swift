/// https://leetcode.com/problems/boats-to-save-people/
struct BoatsToSavePeople {
  func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    let sortedPeople = people.sorted()

    var i = 0
    var j = people.count-1
    var result = 0
    while i <= j {
      let light = sortedPeople[i]
      let heavy = sortedPeople[j]
      if light+heavy <= limit { i += 1 }
      j -= 1
      result += 1
    }

    return result
  }
}
