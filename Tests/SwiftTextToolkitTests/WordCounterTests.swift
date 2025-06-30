//
//  WordCounterTests.swift
//  
//
//  Created by Agustin Palmeira on 27/06/2025.
//

import XCTest
@testable import SwiftTextToolkit

final class WordCounterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testWordCountShouldReturnTen() throws {
        let countTen = WordCounter().countWords(in: "Uno dos tres cuatro cinco seis siete ocho nueve diez.")
        XCTAssertEqual(countTen, 10)
    }
    
    func testWordCountShouldReturnFour() {
        let counter = WordCounter()
        let stringWithFourWords = "Hola mundo desde Swift"
        XCTAssertEqual(counter.countWords(in: stringWithFourWords), 4)
    }
    
    func testcountCharactersShouldReturn10() {
        let counter = WordCounter()
        let stringWithTenCharsInStringWithoutCountingSpaces = "Here are ten"
        XCTAssertEqual(counter.countCharacters(in: stringWithTenCharsInStringWithoutCountingSpaces), 10)
    }
}
