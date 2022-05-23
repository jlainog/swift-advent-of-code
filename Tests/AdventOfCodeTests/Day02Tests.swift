import XCTest
import Parsing
@testable import AdventOfCode

private let parser = Parse {
    Many {
        Parse(Day02.Command.init) {
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
            down 5
            forward 8
            up 3
            down 8
            forward 2
            """),
            [
                Day02.Command.init(.forward, 5),
                Day02.Command.init(.down, 5),
                Day02.Command.init(.forward, 8),
                Day02.Command.init(.up, 3),
                Day02.Command.init(.down, 8),
                Day02.Command.init(.forward, 2),
            ]
        )
    }
    
    func testPart1() throws {
        let input = [
            Day02.Command.init(.forward, 5),
            .init(.down, 5),
            .init(.forward, 8),
            .init(.up, 3),
            .init(.down, 8),
            .init(.forward, 2),
        ]
        XCTAssertEqual(SUT.part1(input), 150)
    }

    func testPart2() {
        let input = [
            Day02.Command.init(.forward, 5),
            .init(.down, 5),
            .init(.forward, 8),
            .init(.up, 3),
            .init(.down, 8),
            .init(.forward, 2),
        ]
        XCTAssertEqual(SUT.part2(input), 900)
    }
    
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
