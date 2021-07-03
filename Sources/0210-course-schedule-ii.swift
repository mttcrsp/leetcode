struct CourseScheduleIi {
  func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
    var adjacency: [Int: Set<Int>] = [:]
    var adjacencyReversed: [Int: Set<Int>] = [:]
    for course in 0 ..< numCourses {
      adjacency[course] = []
      adjacencyReversed[course] = []
    }

    for dependency in prerequisites {
      let course = dependency[0]
      let prerequisite = dependency[1]
      adjacency[course]!.insert(prerequisite)
      adjacencyReversed[prerequisite]!.insert(course)
    }

    var courses: [Int] = []
    while let (course, _) = adjacency.first(where: { _, reqs in reqs.isEmpty }) {
      adjacency[course] = nil

      courses.append(course)

      for successor in adjacencyReversed[course]! {
        adjacency[successor]!.remove(course)
      }
    }

    return adjacency.isEmpty ? courses : []
  }
}
