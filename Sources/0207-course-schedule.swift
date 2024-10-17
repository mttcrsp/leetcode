/// https://leetcode.com/problems/course-schedule/
struct CourseSchedule {
  func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var srcs: [Int: Set<Int>] = [:]
    var dsts: [Int: Set<Int>] = [:]
    for prerequisite in prerequisites {
      let dst = prerequisite[0]
      let src = prerequisite[1]
      srcs[dst, default: []].insert(src)
      dsts[src, default: []].insert(dst)
    }

    var roots: Set<Int> = []
    for vertex in 0 ..< numCourses {
      if srcs[vertex, default: []].isEmpty {
        roots.insert(vertex)
      }
    }

    while let src = roots.popFirst() {
      for dst in dsts[src, default: []] {
        dsts[src, default: []].remove(dst)
        srcs[dst, default: []].remove(src)
        if srcs[dst, default: []].isEmpty {
          roots.insert(dst)
        }
      }
    }

    return srcs.allSatisfy(\.value.isEmpty)
  }
}
