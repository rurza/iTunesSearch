import XCTest
@testable import iTunesSearch

class iTunesSearchURLComponentsTests: XCTestCase {
    
    let locale = Locale(identifier: "en_us")
    
    func testMovie() {
        var components = iTunesSearchURLComponents<Movie>(term: "Shrek")
        components.locale = locale
        XCTAssertEqual(components.url?.absoluteString, "https://itunes.apple.com/search?term=Shrek&country=US&lang=en_us")
    }
    
    func testMusicArtist() {
        var components = iTunesSearchURLComponents<Music>(term: "Smash Mouth", entity: .artist)
        components.locale = locale
        XCTAssertEqual(components.url?.absoluteString, "https://itunes.apple.com/search?term=Smash%20Mouth&country=US&entity=musicArtist&lang=en_us")
    }
    
    func testMusicSong() {
        var components = iTunesSearchURLComponents<Music>(term: "True Original", entity: .song, attribute: .song)
        components.locale = locale
        
    }

    static var allTests = [
        ("testMovie", testMovie),
        ("testMusicArtist", testMusicArtist),
        ("testMusicSong", testMusicSong)
    ]
}
