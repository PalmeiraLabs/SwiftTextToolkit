//
//  SlugifierTests.swift
//  
//
//  Created by Agustin Palmeira on 30/06/2025.
//

import XCTest
@testable import SwiftTextToolkit

final class SlugifierTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: SlugifyFast
    func testSlugifyFastShouldReturnSligifiedText() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyFast(text: "Text to Slugify")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify")
    }
    
    func testSlugifyFastShouldReturnSligifiedTextWithColon() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyFast(text: "Text to Slugify, right")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify,-right")
    }
    
    func testSlugifyFastShouldReturnSligifiedTextWithDot() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyFast(text: "Text to Slugify. Right")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify.-right")
    }
    
    // MARK: SlugifyModerate
    func testSlugifyModerateShouldReturnSligifiedText() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyModerate(text: "Text to Slugify")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify")
    }
    
    func testSlugifyModerateShouldReturnSligifiedTextWithColon() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyModerate(text: "Text to Slugify, right")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify,-right")
    }
    
    func testSlugifyModerateShouldReturnSligifiedTextWithDot() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyModerate(text: "Text to Slugify. Right")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify.-right")
    }
    
    // MARK: SlugifyAdvanced
    func testSlugifyAdvancedShouldReturnSligifiedText() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyAdvanced(text: "Text to Slugify")
        
        XCTAssertEqual(slugifiedText, "text-to-slugify")
    }
    
    func testSlugifyAdvancedShouldNotReturnSligifiedTextWithColon() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyAdvanced(text: "Text to Slugify, right")
        
        XCTAssertNotEqual(slugifiedText, "text-to-slugify,-right")
    }
    
    func testSlugifyAdvancedShouldNotReturnSligifiedTextWithDot() throws {
        let slugifier = Slugifier()
        let slugifiedText = slugifier.slugifyAdvanced(text: "Text to Slugify. Right")
        
        XCTAssertNotEqual(slugifiedText, "text-to-slugify.-right")
    }
}
