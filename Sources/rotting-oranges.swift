
extension Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var positionedOranges: [Position: Orange] = [:]

        for x in grid.indices {
            for y in grid[x].indices {
                let state = State(integer: grid[x][y])
                let position = Position(x, y)

                switch state {
                case .empty: continue
                case .fresh: positionedOranges[position] = Orange(isRotten: false)
                case .rotten: positionedOranges[position] = Orange(isRotten: true)
                }
            }
        }

        for (position, orange) in positionedOranges {
            for adjacentPosition in position.adjacentPositions(in: grid) {
                if let adjacentOrange = positionedOranges[adjacentPosition] {
                    orange.adjacents.append(adjacentOrange)
                }
            }
        }

        let oranges = positionedOranges.values

        if oranges.isEmpty {
            return 0
        }

        var minutes = 0

        while oranges.contains(where: { !$0.isRotten }) {
            // This could be optimized in order to work only of oranges
            // that are still fresh rather than on all oranges.
            var nearlyRottenOranges: [Orange] = []
            for orange in oranges where !orange.isRotten && orange.isNearRotten {
                nearlyRottenOranges.append(orange)
            }

            if nearlyRottenOranges.isEmpty {
                return -1
            }

            for orange in nearlyRottenOranges {
                orange.isRotten = true
            }

            minutes += 1
        }

        return minutes
    }

    fileprivate enum State: Equatable {
        case empty, fresh, rotten
    }

    fileprivate struct Position: Hashable {
        let x, y: Int
    }

    fileprivate final class Orange {
        var isRotten: Bool
        var adjacents: [Orange] = []

        init(isRotten: Bool) {
            self.isRotten = isRotten
        }
    }
}

private extension Solution.Position {
    typealias Grid = [[Int]]

    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }

    func adjacentPositions(in grid: Grid) -> [Solution.Position] {
        [.init(x - 1, y), .init(x + 1, y), .init(x, y + 1), .init(x, y - 1)].filter {
            position in position.isWithinBounds(of: grid)
        }
    }

    func isWithinBounds(of grid: Grid) -> Bool {
        guard grid.indices.contains(x), grid[x].indices.contains(y) else { return false }
        return true
    }
}

private extension Solution.State {
    init(integer: Int) {
        switch integer {
        case 0: self = .empty
        case 1: self = .fresh
        case 2: self = .rotten
        default: preconditionFailure("Each cell can have one of tree values: 0, 1, 2.")
        }
    }
}

extension Solution.Orange {
    var isIsolated: Bool {
        adjacents.isEmpty
    }

    var isNearRotten: Bool {
        adjacents.contains { $0.isRotten }
    }
}
