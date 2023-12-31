/// https://leetcode.com/problems/simplify-path/
struct SimplifyPath {
  func simplifyPath(_ path: String) -> String {
    var newComponents: [String] = []
    for component in path.components(separatedBy: "/") {
      switch component {
      case "", ".":
        continue
      case "..":
        _ = newComponents.popLast()
      default:
        newComponents.append(component)
      }
    }
    return "/\(newComponents.joined(separator: "/"))"
  }
}
