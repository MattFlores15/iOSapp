import Foundation
import UIKit


class MockService2{
    
    public static let shared = MockService2()
    
    func getData() -> [GamesDataObject] {
        return [
            GamesDataObject(image: UIImage(named:"tmnt"), name: "TMNT Turtles in Time"),
            
            GamesDataObject(image: UIImage(named:"hades"), name: "Hades"),
            
            GamesDataObject(image: UIImage(named:"ssb"), name: "Super Smash Bros."),
            
            GamesDataObject(image: UIImage(named:"kotor"), name: "Star Wars KoToR"),
            
            GamesDataObject(image: UIImage(named:"oppw"), name: "One Piece: Pirate Warriors"),
            
            GamesDataObject(image: UIImage(named:"dao"), name: "Dragon Age Origins")
        ]
    }
}
