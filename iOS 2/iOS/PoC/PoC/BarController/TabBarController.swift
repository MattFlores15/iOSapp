import UIKit


class TabBarController: UITabBarController{
    
    @IBInspectable var initialIndex: Int = 0
    override func viewDidLoad(){
        super.viewDidLoad()
        selectedIndex = initialIndex
    }
}
