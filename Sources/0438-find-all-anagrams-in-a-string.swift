/// https://leetcode.com/problems/find-all-anagrams-in-a-string/
struct FindAllAnagramsInAString {
  func findAnagrams(_ s: String, _ p: String) -> [Int] {
    let s = Array(s)
    let p = Array(p)

    var countsS: [Character: Int] = [:]
    var countsP: [Character: Int] = [:]
    for character in p {
      countsP[character, default: 0] += 1
    }

    var result: [Int] = []
    for (index, character) in s.enumerated() {
      countsS[character, default: 0] += 1

      if index >= p.count {
        let removedCharacter = s[index-p.count]
        if countsS[removedCharacter, default: 0] > 1 {
          countsS[removedCharacter, default: 0] -= 1
        } else {
          countsS[removedCharacter] = nil
        }
      }

      if countsS == countsP {
        result.append(index-p.count+1)
      }
    }

    return result
  }
}
