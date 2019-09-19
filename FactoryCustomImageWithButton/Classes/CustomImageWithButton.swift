import UIKit

public class CustomImageWithButton: UIView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .center
        view.backgroundColor = .green
        return view
    }()
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Factory_Logo")
        return view
    }()
    
    private let textView: UILabel = {
        let view = UILabel()
        view.text = "Go To Factory.hr"
        return view
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
    

    
}
