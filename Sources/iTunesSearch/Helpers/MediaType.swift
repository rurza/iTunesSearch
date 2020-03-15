public protocol MediaType {
    associatedtype Entity: RawRepresentable where Entity.RawValue == String
    associatedtype Attribute: RawRepresentable where Attribute.RawValue == String
}


public struct All: MediaType {
    public enum Entity: String {
        case movie
        case album
        case artist = "allArtist"
        case podcast
        case musicVideo
        case mix
        case audiobook
        case tvSeason
        case track = "allTrack"
    }
    
    public enum Attribute: String {
        case actor = "actorTerm"
        case language = "languageTerm"
        case allArtist = "allArtistTerm"
        case episode = "tvEpisodeTerm"
        case shortFilm = "shortFilmTerm"
        case director = "directorTerm"
        case releaseYear = "releaseYearTerm"
        case title = "titleTerm"
        case featureFilm = "featureFilmTerm"
        case ratingIndex = "ratingIndex"
        case keywords = "keywordsTerm"
        case description = "descriptionTerm"
        case author = "authorTerm"
        case genre = "genreIndex"
        case mix = "mixTerm"
        case track = "allTrackTerm"
        case artist = "artistTerm"
        case composer = "composerTerm"
        case season = "tvSeasonTerm"
        case producer = "producerTerm"
        case ratingTerm = "ratingTerm"
        case song = "songTerm"
        case movieArtist = "movieArtistTerm"
        case show = "showTerm"
        case movie = "movieTerm"
        case album = "albumTerm"
    }
}



public enum Movie: MediaType {
    public enum Entity: String {
        case movie
        case artist = "movieArtist"
    }
    
    public enum Attribute: String {
        case actor = "actorTerm"
        case genre = "genreIndex"
        case artist = "artistTerm"
        case shortFilm = "shortFilmTerm"
        case producer = "producerTerm"
        case ratingTerm = "ratingTerm"
        case director = "directorTerm"
        case releaseYear = "releaseYearTerm"
        case featureFilm = "featureFilmTerm"
        case movieArtist = "movieArtistTerm"
        case movie = "movieTerm"
        case ratingIndex = "ratingIndex"
        case description = "descriptionTerm"
    }
}

public struct Music: MediaType {
    public enum Entity: String {
        case artist = "musicArtist"
        case track = "musicTrack"
        case album
        case musicVideo
        case mix
        case song
    }
    
    public enum Attribute: String {
        case mix = "mixTerm"
        case genre = "genreIndex"
        case artist = "artistTerm"
        case composer = "composerTerm"
        case album = "albumTerm"
        case rating = "ratingIndex"
        case song = "songTerm"
    }
}

public struct MusicVideo: MediaType {
    public enum Entity: String {
        case musicVideo
        case artist = "musicArtist"
    }
    
    public enum Attribute: String {
        case genre = "genreIndex"
        case artist = "artistTerm"
        case album = "albumTerm"
        case rating = "ratingIndex"
        case song = "songTerm"
    }
}

public struct Podcast: MediaType {
    public enum Entity: String {
        case podcast
        case author = "podcastAuthor"
    }
    
    public enum Attribute: String {
        case title = "titleTerm"
        case language = "languageTerm"
        case author = "authorTerm"
        case genre = "genreIndex"
        case artist = "artistTerm"
        case rating = "ratingIndex"
        case keywords = "keywordsTerm"
        case description = "descriptionTerm"
    }
}


public struct ShortFilm: MediaType {
    public enum Entity: String {
        case shortFilm
        case artist = "shortFilmArtist"
    }
    
    public enum Attribute: String {
        case genre = "genreIndex"
        case artist = "artistTerm"
        case shortFilm = "shortFilmTerm"
        case rating = "ratingIndex"
        case description = "descriptionTerm"
    }
}

public struct Software: MediaType {
    public enum Entity: String {
        case software
        case iPadSoftware
        case macSoftware
    }
    
    public enum Attribute: String {
        case softwareDeveloper
    }
}

public struct TVShow: MediaType {
    public enum Entity: String {
        case episode = "tvEpisode"
        case season = "tvSeason"
    }
    
    public enum Attribute: String {
        case genre = "genreIndex"
        case episode = "tvEpisodeTerm"
        case show = "showTerm"
        case season = "tvSeasonTerm"
        case rating = "ratingIndex"
        case description = "descriptionTerm"
    }
}

public struct AudioBook: MediaType {
    public enum Entity: String {
        case audiobook
        case author = "audiobookAuthor"
    }
    
    public enum Attribute: String {
        case title = "titleTerm"
        case author = "authorTerm"
        case genre = "genreIndex"
        case rating = "ratingIndex"
    }
}

public struct EBook: MediaType {
    public enum Entity: String {
        case ebook
    }
    
    // FIXME: Speculative
    public enum Attribute: String {
        case title = "titleTerm"
        case author = "authorTerm"
        case genre = "genreIndex"
        case rating = "ratingIndex"
    }
}
