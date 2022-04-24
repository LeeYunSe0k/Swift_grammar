/*
 타입캐스팅 : 인스턴스 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈퍼클래스나 서브클래스로 취급하는 방법
 타입 캐스팅 연산자 : is, as
 */
import Foundation

class Mediaitem{
    var name: String
    init(name: String){
        self.name = name
    }
}
class Movie: Mediaitem{
    var director: String
    init(name: String, director: String){
        self.director = director
        super.init(name: name)
    }
}
class Song: Mediaitem{
    var artist: String
    init(name: String, artist: String){
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
Movie(name: "기생충", director: "봉준호"),
Song(name: "Butter", artist: "BTS"),
Movie(name: "올드보이", director: "박찬욱"),
Song(name: "Wonderwall", artist: "Oasis"),
Song(name: "Rain", artist: "이적")
]
var movieCount = 0
var songCount = 0

for item in library{
    if item is Movie{
        movieCount += 1
    }
    else if item is Song{
        songCount += 1
    }
}
print("Media library contains \(movieCount) movies and \(songCount)songs")

// as? 는 다운캐스팅 하려는 옵셔널 값으로 반환
// as! 는 강제적으로 다운캐스팅. 잘못된 값을 줄 시 런타임 에러 발생
for item in library{
    if let movie = item as? Movie{
        print("Movie: \(movie.name), dir. \(movie.director)")
    }
    else if let song = item as? Song{
        print("Song: \(song.name), by \(song.artist)")
    }
}
