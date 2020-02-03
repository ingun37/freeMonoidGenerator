import XCTest
@testable import lexiFreeMonoid

final class lexiFreeMonoidTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var generator = lexiFreeMonoid(generator: ["A","B","C"])
        let names = (0..<15).map({_ in generator.next()})
        XCTAssertEqual(names, ["A", "B", "C", "AA", "AB", "AC", "BA", "BB", "BC", "CA", "CB", "CC", "AAA", "AAB", "AAC"])
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
