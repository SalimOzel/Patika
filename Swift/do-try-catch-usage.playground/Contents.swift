import UIKit
enum HATALAR: Error {
    case sifiraBolmeHatasi
}

func bolme(s1: Int, s2: Int) throws -> Int {
    if s2 == 0 {
        throw HATALAR.sifiraBolmeHatasi
    }
    return s1 / s2
}

var s1 = 10
var s2 = 0

do {
    let sonuc = try bolme(s1: 10, s2: 0)
    print(sonuc)

} catch HATALAR.sifiraBolmeHatasi {
    print("HATA! sayı sıfıra bölünemez.")
}
