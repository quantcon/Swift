import UIKit

public final class MyViewController: UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .darkGray
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 182.0)
        label.text = "Test"
        label.textColor = .white
        return label
    }()
    
    let background: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "iPad.jpg"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        view.addSubview(background)
        background.frame = view.bounds
        background.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
            ])
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.text = String(format: "Screen Size\n%.0f pt\nx\n%.0f pt", view.bounds.width, view.bounds.height)
    }
    
}
