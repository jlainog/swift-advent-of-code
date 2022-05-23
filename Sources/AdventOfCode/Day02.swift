import Algorithms

struct Day02: Day {
    enum Direction: String, CaseIterable {
        case forward, down, up
    }
    struct Command: Equatable {
        var direction: Direction
        var value: Int
        init(_ direction: Direction, _ value: Int) {
            self.direction = direction
            self.value = value
        }
    }

    typealias Input = [Command]
    typealias Output = Int
    
    static func part1(_ input: Input) -> Int {
        var depth = 0
        var horizontalPosition = 0
        
        for command in input {
            switch command.direction {
            case .forward:
                horizontalPosition += command.value
            case .down:
                depth += command.value
            case .up:
                depth -= command.value
            }
        }
        
        return depth * horizontalPosition
    }
    
    static func part2(_ input: Input) -> Int {
        var aim = 0
        var depth = 0
        var horizontalPosition = 0
        
        for command in input {
            switch command.direction {
            case .forward:
                horizontalPosition += command.value
                depth = depth + aim * command.value
            case .down:
                aim += command.value
            case .up:
                aim -= command.value
            }
        }
        
        return depth * horizontalPosition
    }
}
