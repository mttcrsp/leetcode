struct ReconstructItinerary {
  func findItinerary(_ tickets: [[String]]) -> [String] {
    guard !tickets.isEmpty else { return [] }

    var destinationsForOrigin: [String: [String]] = [:]
    for ticket in tickets {
      let origin = ticket[0], destination = ticket[1]
      destinationsForOrigin[origin, default: []].append(destination)
    }

    for (origin, destinations) in destinationsForOrigin {
      destinationsForOrigin[origin] = destinations.sorted()
    }

    var dfs: [String] = ["JFK"]
    var itinerary: [String] = []
    while let previousAirport = dfs.last {
      if destinationsForOrigin[previousAirport, default: []].isEmpty {
        itinerary.append(previousAirport)
        dfs.removeLast()
      } else {
        dfs.append(destinationsForOrigin[previousAirport]!.removeFirst())
      }
    }
    return itinerary.reversed()
  }
}
