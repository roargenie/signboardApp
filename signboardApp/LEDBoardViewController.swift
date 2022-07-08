

import UIKit

class BoardViewController: UIViewController {
    
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var textColorButton: UIButton!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet var buttonList: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //mainLabel.numberOfLines = 0
        designButton(buttonName: sendButton, buttonTitle: "전송", hightlightedTitle: "빨리보내")
        designButton(buttonName: textColorButton, buttonTitle: "변해라", hightlightedTitle: "얍!")
        designTextField()
        designSubView()
        
    }
    
    func designSubView() {
        subView.backgroundColor = .lightGray
        subView.layer.borderWidth = 5
        subView.layer.borderColor = UIColor.blue.cgColor
        subView.layer.cornerRadius = 10
    }
    
    func designTextField() {
        mainTextField.placeholder = "내용을 입력해주세요."
        //mainTextField.text = "Hello!"
        mainTextField.keyboardType = .webSearch
    }
    
    func designButton(buttonName: UIButton, buttonTitle: String, hightlightedTitle: String) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(hightlightedTitle, for: .highlighted)
        buttonName.backgroundColor = .yellow
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
//    func studyOutletCollection() {
//        let buttonArray: [UIButton] = [sendButton, textColorButton]
//
//        for i in buttonArray {
//            i.backgroundColor = .blue
//            i.layer.cornerRadius = 3
//        }
//        
//        for i in buttonList {
//            i.backgroundColor = .blue
//            i.layer.cornerRadius = 3
//        }
//    }
    
    
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        mainLabel.text = mainTextField.text
        
        
        
        
    }
    
    @IBAction func colorButtonTapped(_ sender: UIButton) {
        mainLabel.textColor = UIColor.random()
        
    }
    
    
    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        subView.isHidden.toggle()
        
        
        
        
    }
    
    @IBAction func textFieldTapped(_ sender: UITextField) {
        
        
    }
    
    
    
    
    
}

extension UIColor {
    static func random() ->  UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0)
    }
}
