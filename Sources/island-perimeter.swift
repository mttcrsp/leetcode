/// You are given a map in form of a two-dimensional integer grid where 1
/// represents land and 0 represents water.
///
/// Grid cells are connected horizontally/vertically (not diagonally). The
/// grid is completely surrounded by water, and there is exactly one island
/// (i.e., one or more connected land cells).
///
/// The island doesn't have "lakes" (water inside that isn't connected to the
/// water around the island). One cell is a square with side length 1. The
/// grid is rectangular, width and height don't exceed 100. Determine the
/// perimeter of the island.

class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var result = 0

        for x in 0 ..< grid.count {
            for y in 0 ..< grid[x].count {
                guard grid[x][y] == 1 else { continue }
                if x - 1 < 0 || grid[x - 1][y] == 0 { result += 1 }
                if x + 1 >= grid.count || grid[x + 1][y] == 0 { result += 1 }
                if y - 1 < 0 || grid[x][y - 1] == 0 { result += 1 }
                if y + 1 >= grid[x].count || grid[x][y + 1] == 0 { result += 1 }
            }
        }

        return result
    }
}

var input: [[Int]] =
    [[0, 1, 0, 0],
     [1, 1, 1, 0],
     [0, 1, 0, 0],
     [1, 1, 0, 0]]
var output = 16

print(Solution().islandPerimeter(input) == output)
