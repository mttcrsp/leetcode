/// https://leetcode.com/problems/apply-discount-to-prices/
struct ApplyDiscountToPrices {
  func discountPrices(_ sentence: String, _ discount: Int) -> String {
    func formattedDiscountedPrice(for price: Int) -> String {
      var discountedPrice = price*100 // cents
      discountedPrice *= (100-discount)
      discountedPrice /= 100

      let integerPart = "\(discountedPrice/100)"
      var decimalPart = "\(discountedPrice%100)"
      if decimalPart.count == 1 {
        decimalPart = "0\(decimalPart)"
      }
      return "$\(integerPart).\(decimalPart)"
    }

    func price(from word: String) -> Int? {
      var index = word.startIndex
      guard word[index] == "$"
      else { return nil }

      index = word.index(after: index)
      guard index != word.endIndex
      else { return nil }

      var price = 0
      while index < word.endIndex {
        guard word[index].isNumber, let value = Int(String(word[index]))
        else { return nil }

        price *= 10
        price += value
        index = word.index(after: index)
      }

      return price
    }

    return sentence
      .components(separatedBy: " ")
      .map { word in
        if let price = price(from: word) {
          formattedDiscountedPrice(for: price)
        } else {
          word
        }
      }
      .joined(separator: " ")
  }
}
