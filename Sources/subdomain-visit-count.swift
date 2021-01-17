struct SubdomainVisitCount {
  func subdomainVisits(_ cpdomains: [String]) -> [String] {
    var visitsPerSubdomain: [String: Int] = [:]

    for cpdomain in cpdomains {
      guard let (visits, domain) = components(of: cpdomain) else {
        continue
      }

      for subdomain in subdomains(in: domain) {
        visitsPerSubdomain[subdomain, default: 0] += visits
      }
    }

    var result: [String] = []
    for (subdomain, visits) in visitsPerSubdomain {
      result.append("\(visits) \(subdomain)")
    }
    return result
  }

  private func subdomains(in domain: String) -> [String] {
    let components = domain.components(separatedBy: ".")

    var subdomains: [String] = []
    for i in 0 ..< components.count {
      subdomains.append(components[i ..< components.count].joined(separator: "."))
    }
    return subdomains
  }

  private func components(of cpdomain: String) -> (visits: Int, domain: String)? {
    let components = cpdomain.components(separatedBy: " ")

    guard components.count == 2, let visits = Int(components[0]) else {
      assertionFailure("Malformed cpdomain found: \(cpdomain)")
      return nil
    }

    return (visits, components[1])
  }
}
