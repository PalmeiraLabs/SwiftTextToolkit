import XCTest
@testable import SwiftTextToolkit

final class SwiftTextToolkitTests: XCTestCase {
    func testCountWordsShouldReturnTwo() throws {
        let toolkit = SwiftTextToolkit()
        let words = toolkit.wordCounter.countWords(in: "Hello world!")
        XCTAssertEqual(words, 2)
    }
    
    func testSlugifyModerateShouldReturnTheSlugifiedTextWithColonAndMinusInMiddle() throws {
        let toolkit = SwiftTextToolkit()
        let slug = toolkit.slugifier.slugifyModerate(text: "Hello, Swift!")
        XCTAssertEqual(slug, "hello,-swift!")
    }
}
