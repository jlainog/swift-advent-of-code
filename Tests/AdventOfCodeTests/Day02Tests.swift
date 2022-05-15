import XCTest
import Parsing
@testable import AdventOfCode

private let parser = Parse {
    Many {
        Parse(Day02.Instruction.init) {
            Day02.Direction.parser(of: Substring.self)
            Whitespace()
            Digits()
        }
    } separator: {
        "\n"
    }
}

final class Day02Tests: XCTestCase {
    typealias SUT = Day02
    
    func testParser() {
        XCTAssertEqual(
            try parser.parse("""
            forward 5
            down 4
            up 3
            """),
            [
                .init(direction: .forward, value: 5),
                .init(direction: .down, value: 4),
                .init(direction: .up, value: 3),
            ]
        )
    }
    
//    func testPart1() throws {
//        let input = [
//        ]
//        XCTAssertEqual(SUT.part1(input), 7)
//    }
//
//    func testPart2() {
//        let input = [
//        ]
//        XCTAssertEqual(SUT.part2(input), 5)
//    }
    
    func testSolveGivenInput() throws {
        print("\n\(String(describing: SUT.self)) - Solutions")
        defer { print("") }
        
        guard let part1Input = try? parser.parse(part1Input)
        else { throw XCTSkip("Part1 Input haven't been filled") }
        
        let solutionPart1 = SUT.part1(part1Input)
        
        print("Part1 - \(solutionPart1)")
        
        guard let part2Input = try? parser.parse(part2Input)
        else { throw XCTSkip("Part2 Input haven't been filled") }
        
        let solutionPart2 = SUT.part2(part2Input)
        print("Part2 - \(solutionPart2)")
    }
}

private var part1Input: String {
    #"""
    Put here your given input
    """#
}
private var part2Input: String {
    #"""
    Put here your given input
    """#
}
