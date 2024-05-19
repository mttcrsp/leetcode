/// https://leetcode.com/problems/accounts-merge/
struct AccountsMerge {
  func accountsMerge(_ accounts: [[String]]) -> [[String]] {
    var names: [String: String] = [:]
    var graph: [String: Set<String>] = [:]
    for account in accounts {
      for email in account.dropFirst() {
        names[email] = account[0]
        graph[email, default: []].insert(account[1])
        graph[account[1], default: []].insert(email)
      }
    }

    var result: [[String]] = []
    var attributedEmails: Set<String> = []
    for (source, _) in graph where !attributedEmails.contains(source) {
      var emails: Set<String> = [source]
      var frontier = graph[source, default: []]
      while let email = frontier.popFirst() {
        guard !attributedEmails.contains(email) else { continue }
        emails.insert(email)
        attributedEmails.insert(email)
        frontier.formUnion(graph[email, default: []])
      }

      let name = names[source]!
      result.append([name]+emails.sorted())
    }

    return result
  }
}
