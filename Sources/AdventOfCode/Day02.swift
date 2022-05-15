import Algorithms

struct Day02: Day {
    enum Direction: String, CaseIterable {
        case forward, down, up
    }
    struct Instruction: Equatable {
        var direction: Direction
        var value: Int
    }

    typealias Input = [Instruction]
    typealias Output = Int
    
    static func part1(_ input: Input) -> Int {
        0
    }
    
    static func part2(_ input: Input) -> Int {
        0
    }
}
