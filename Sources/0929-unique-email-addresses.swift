/// https://leetcode.com/problems/unique-email-addresses/
struct UniqueEmailAddresses {
  func numUniqueEmails(_ emails: [String]) -> Int {
    var uniqued: Set<String> = []
    for email in emails {
      var isMatchingDomainName = false
      var isIgnoringLocalName = false
      var resolved = ""
      for character in email {
        if isMatchingDomainName {
          resolved.append(character)
        } else if character == "." {
          continue
        } else if character == "@" {
          isMatchingDomainName = true
          resolved.append(character)
        } else if character == "+" {
          isIgnoringLocalName = true
        } else if !isIgnoringLocalName {
          resolved.append(character)
        }
      }
      uniqued.insert(resolved)
    }
    return uniqued.count
  }
}
