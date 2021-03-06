# iTunesSearch

[iTunes Search API](https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/)

## Router

This functionality is discussed in Chapter 4 of
[Flight School Guide to Swift Codable](https://flight.school/books/codable).

```swift
let components =
    AppleiTunesSearchURLComponents<Music>(
        term: "Smash Mouth",
        entity: .artist
    )

print(components.url?.absoluteString)
// "https://itunes.apple.com/search?term=Smash%20Mouth&country=US&entity=musicArtist&lang=en_us"
```

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))

[build status]: https://travis-ci.org/Flight-School/AppleiTunesSearchURLComponents
[build status badge]: https://api.travis-ci.com/Flight-School/AppleiTunesSearchURLComponents.svg?branch=master
