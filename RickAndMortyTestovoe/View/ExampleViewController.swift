import UIKit

class ExampleViewController: UIViewController {
    
    private let logoImage = UIImageView()
    private let loadingImage = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        loadingImage.rotate()
    }
    


}

