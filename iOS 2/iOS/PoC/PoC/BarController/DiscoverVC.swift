import UIKit
import SwiftUI

class DiscoverVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let controller = UIHostingController(rootView: DiscoverView(guide: GuideDataObject.mock()))
        controller.view?.translatesAutoresizingMaskIntoConstraints = false
        self.addChild(controller)
        self.view.addSubview(controller.view)
        controller.didMove(toParent: self)
        
    }
}
