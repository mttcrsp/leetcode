/// https://leetcode.com/problems/robot-room-cleaner/
struct RobotRoomCleaner {
  func cleanRoom(_ robot: Robot) {
    func goBack() {
      robot.turnRight()
      robot.turnRight()
      _ = robot.move()
      robot.turnRight()
      robot.turnRight()
    }

    let directions = [[-1, 0], [0, 1], [1, 0], [0, -1]]
    var visited: Set<[Int]> = []
    func backTrack(_ x: Int = 0, _ y: Int = 0, _ direction: Int = 0) {
      visited.insert([x, y])
      robot.clean()

      for i in 0 ..< 4 {
        let nextDirection = (direction+i)%4
        let nextX = x+directions[nextDirection][0]
        let nextY = y+directions[nextDirection][1]
        if !visited.contains([nextX, nextY]), robot.move() {
          backTrack(nextX, nextY, nextDirection)
          goBack()
        }

        robot.turnRight()
      }
    }

    backTrack()
  }

  class Robot {
    func move() -> Bool { true }
    func turnLeft() {}
    func turnRight() {}
    func clean() {}
  }
}
