/// https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/
struct MaximumLengthOfAConcatenatedStringWithUniqueCharacters {
  func maxLength(_ arr: [String], _ context: Context = .init()) -> Int {
    guard let word = arr.first else { return context.length }

    let characters = Set(word)
    let arr = Array(arr[1 ..< arr.count])
    var result = maxLength(arr, context)
    if characters.count == word.count, characters.isDisjoint(with: context.characters) {
      var context = context
      context.characters.formUnion(characters)
      context.length += characters.count
      result = max(result, maxLength(arr, context))
    }

    return result
  }

  struct Context {
    var characters: Set<Character> = []
    var length = 0
  }
}
