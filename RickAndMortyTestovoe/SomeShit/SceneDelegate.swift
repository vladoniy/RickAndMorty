import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }


        let launchVC = LaunchViewController()
        let tabbarVC = RMTabBarController()
        let nav = UINavigationController(rootViewController: tabbarVC)
        nav.viewControllers.append(launchVC)
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        
        
       
        
        
        
    }

   


}

