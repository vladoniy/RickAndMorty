import UIKit

class LaunchViewController: UIViewController {
    private let logoImage = UIImageView()
    private let loadingImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(logoImage)
        view.addSubview(loadingImage)
        logoImage.image = UIImage(named: "Logo")
        loadingImage.image = UIImage(named: "Loading component")
        addConstraints()
        navigationItem.hidesBackButton = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadingImage.rotate()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            UIView.animate(withDuration: 0.3) {
                self?.view.alpha = 0
            }
            self?.navigationController?.popViewController(animated: true)
        }
        
    }
    

    private func addConstraints() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        loadingImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImage.widthAnchor.constraint(equalToConstant: 312),
            logoImage.heightAnchor.constraint(equalToConstant: 114),
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 107),
            logoImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 44),
            
            loadingImage.widthAnchor.constraint(equalToConstant: 210),
            loadingImage.heightAnchor.constraint(equalToConstant: 210),
            loadingImage.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 126),
            loadingImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 91),

        ])
        print(view.frame.width)
    }

}
extension UIImageView{
    func rotate() {
        let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi)
        rotation.duration = 1
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        self.layer.add(rotation, forKey: "rotationAnimation")
    }
}
