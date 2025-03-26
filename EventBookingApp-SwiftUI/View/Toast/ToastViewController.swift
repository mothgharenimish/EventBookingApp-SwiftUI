import UIKit
import SwiftUI

class ToastViewController: UIViewController {
    func showToast(message: String) {
        let toastLabel = UILabel()
        toastLabel.text = message
        toastLabel.textColor = .white
        toastLabel.textAlignment = .center
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds = true
        toastLabel.numberOfLines = 0
        toastLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)

        // Set initial size based on content
        toastLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(toastLabel)

        // Constraints for centering and bottom positioning
        NSLayoutConstraint.activate([
            toastLabel.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 30),
            toastLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -30),
            toastLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toastLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            toastLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 35)
        ])

        // Fade out after delay
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }) { _ in
            toastLabel.removeFromSuperview()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

struct ToastControllerRepresentable: UIViewControllerRepresentable {
    @Binding var message: String?

    func makeUIViewController(context: Context) -> ToastViewController {
        ToastViewController()
    }

    func updateUIViewController(_ uiViewController: ToastViewController, context: Context) {
        if let msg = message {
            uiViewController.showToast(message: msg)
            DispatchQueue.main.async {
                message = nil
            }
        }
    }
}
