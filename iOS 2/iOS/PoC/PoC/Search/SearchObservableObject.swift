import Foundation

class SearchObservableObject: ObservableObject{
//    @Published var SearchText = ""
    var data: [GuideDataObject] = []
    @Published var searchResults: [GuideDataObject] = []

    init() {
        data = MockService.shared.getData()
    }
}
