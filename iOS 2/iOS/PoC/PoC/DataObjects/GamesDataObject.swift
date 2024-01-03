import Foundation
import SwiftUI


struct GamesDataObject: Identifiable, Hashable{
    let id = UUID()
    var image = UIImage(named: "")
    var name = ""
}

extension GamesDataObject {
    static func mock2() -> GamesDataObject {
        GamesDataObject(image: UIImage(named: "games"),name: "Any Game Ever")
    }
}
