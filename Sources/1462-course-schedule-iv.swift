/// https://leetcode.com/problems/course-schedule-iv/
struct CourseScheduleIv {
  func checkIfPrerequisite(_ numCourses: Int, _ prerequisites: [[Int]], _ queries: [[Int]]) -> [Bool] {
    let row = [Bool](repeating: false, count: numCourses)
    var matrix = [[Bool]](repeating: row, count: numCourses)

    for prerequisite in prerequisites {
      matrix[prerequisite[0]][prerequisite[1]] = true
    }

    for k in 0 ..< numCourses {
      for i in 0 ..< numCourses {
        for j in 0 ..< numCourses {
          matrix[i][j] = matrix[i][j] || (matrix[i][k] && matrix[k][j])
        }
      }
    }

    return queries.map { query in
      matrix[query[0]][query[1]]
    }
  }
}
