protocol Day {
    associatedtype Input
    associatedtype Output
    
    static func part1(_ input: Input) -> Output
    static func part2(_ input: Input) -> Output
}
