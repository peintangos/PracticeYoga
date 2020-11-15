//
//  SecondViewController.swift
//  PracticeYoga
//
//  Created by 松尾淳平 on 2020/11/15.
//

import UIKit
import YogaKit
class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.width)
            layout.height = YGValue(self.view.bounds.height)
            layout.alignItems = .center
            layout.flexDirection = .column
            layout.justifyContent = .center
        }
        let contentView = UIView()
        contentView.backgroundColor = .systemRed
        contentView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 300
            layout.height = 50
        }
        contentView.backgroundColor = .green
        let contentView2 = UIView()
        contentView2.backgroundColor = .darkGray
        contentView2.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 400
            layout.height = 50
        }
        view.addSubview(contentView)
        view.addSubview(contentView2)

        
        view.yoga.applyLayout(preservingOrigin: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
