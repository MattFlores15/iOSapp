import UIKit
import SwiftUI

class SearchVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let controller = UIHostingController(rootView: SearchView())
        controller.view?.translatesAutoresizingMaskIntoConstraints = false
        self.addChild(controller)
        self.view.addSubview(controller.view)
        controller.didMove(toParent: self)
    }
}
