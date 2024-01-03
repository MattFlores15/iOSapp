import Foundation

class GamesObservableObject: ObservableObject{
//    @Published var SearchText = ""
    var data2: [GamesDataObject] = []
    @Published var gamesResults: [GamesDataObject] = []

    init() {
        data2 = MockService2.shared.getData()
    }
}
