import UIKit
import SwiftUI

class HomeVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controller = UIHostingController(rootView: HomeView(guide: GuideDataObject.mock()))
        
        guard let searchView = controller.view else {return}
        
        
        searchView.translatesAutoresizingMaskIntoConstraints = false
        self.addChild(controller)
        self.view.addSubview(searchView)
        
        searchView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        searchView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//        controller.didMove(toParent: self)
//
        
    }
}
