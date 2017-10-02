//
//  ViewController.swift
//  AddMoreLabel
//
//  Created by Neo Nguyen on 10/2/17.
//  Copyright © 2017 Neo Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak fileprivate var lbText : UILabel!
    @IBOutlet weak fileprivate var lbMore : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.lbMore.isHidden = !self.lbText.isTruncated()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UILabel{
    
    func isTruncated() ->Bool {
        guard let labelText = text else {
            return false
        }
        
        let labelTextSize = (labelText as NSString).boundingRect(
            with: CGSize(width: frame.size.width, height: .greatestFiniteMagnitude),
            options: .usesLineFragmentOrigin,
            attributes: [NSAttributedStringKey.font: font],
            context: nil).size
        
        return labelTextSize.height > bounds.size.height
    }
}

