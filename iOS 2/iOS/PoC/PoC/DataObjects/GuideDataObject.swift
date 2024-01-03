import Foundation
import SwiftUI


struct GuideDataObject: Identifiable, Hashable{
    let id = UUID()
    var image = UIImage(named: "")
    var name = ""
    var title = ""
    var text = ""
    var deviceicon = UIImage(named: "")
    var platform = ""
    var icon = UIImage(named: "")
    var autor = ""
}

extension GuideDataObject {
    static func mock() -> GuideDataObject {
        GuideDataObject(image: UIImage(named: "games"),name: "Any Game Ever", title: "This is a title", text: "This is a mock text", deviceicon:UIImage(named: "n64"), platform: "Console",icon: UIImage(named: "super-mario") , autor: "Autor here")
    }
}


