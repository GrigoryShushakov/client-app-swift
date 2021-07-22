import UIKit
import VerSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground
        buildUI()
    }
    
    private func buildUI() {
        view.addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc private func start() {
        VerSDK.shared.run()
    }
    
    let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start Verification", for: .normal)
        button.addTarget(self, action: #selector(start), for: .touchUpInside)
        return button
    }()
}

