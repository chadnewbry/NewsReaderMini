//
//  NewsReaderMiniTests.swift
//  NewsReaderMiniTests
//
//  Created by Chad Newbry on 12/13/22.
//

import XCTest
import SwiftUI
@testable import NewsReaderMini
import SnapshotTesting

class NewsReaderMiniTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testArticleDetailView() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
       
        let view = ArticleDetail(article: Article())
        let v = UIHostingController(rootView: view)
        assertSnapshot(matching: v, as: .image(size: .init(width: 500, height: 1040)))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
