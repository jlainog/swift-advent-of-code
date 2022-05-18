import Algorithms

struct Day01: Day {
    typealias Input = [Int]
    typealias Output = Int
    
    static func part1(_ input: Input) -> Int {
        input
            .adjacentPairs()
            .filter { $0 < $1 }
            .count
    }
    
    static func part2(_ input: Input) -> Int {
        input
            .windows(ofCount: 3)
            .adjacentPairs()
            .filter { $0.0.reduce(0, +) < $0.1.reduce(0, +)  }
            .count
    }
}
