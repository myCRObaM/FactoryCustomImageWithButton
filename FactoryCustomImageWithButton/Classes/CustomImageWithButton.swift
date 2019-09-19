import UIKit

public class CustomImageWithButton: UIView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .center
        return view
    }()
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    private let textView: UILabel = {
        let view = UILabel()
        view.text = "Go To Factory.hr"
        view.textColor = .black
        return view
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.image = getImageFromBundle(name: "Factory_Logo")
        setupStackView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupStackView(){
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(textView)
        stackView.addArrangedSubview(imageView)
    }
    override public func layoutSubviews() {
        super.layoutSubviews()
        self.stackView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
    }
    
    private func getImageFromBundle(name: String) -> UIImage {
        let podBundle = Bundle(for: CustomImageWithButton.self)
        if let url = podBundle.url(forResource: "CustomImageWithButton", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: name, in: bundle, compatibleWith: nil)!
        }
        return UIImage()
    }
    

    
}

