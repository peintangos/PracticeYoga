//
//  ViewController.swift
//  PracticeYoga
//
//  Created by 松尾淳平 on 2020/11/15.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.configureLayout { (layout) in
          layout.isEnabled = true
          layout.width = YGValue(self.view.bounds.size.width)
          layout.height = YGValue(self.view.bounds.size.height)
          layout.alignItems = .center
            layout.justifyContent = .center
        }
        let contentView = UIView()
        contentView.backgroundColor = .lightGray
        contentView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.width = 200
            layout.height = 80
//            layout.marginTop = 40
//            layout.marginLeft = 10
            layout.padding = 10
        }
        let child = UIView()
        child.backgroundColor = .red
        child.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 80
            layout.marginRight = 10
        }
        contentView.addSubview(child)
        let childFriend = UIView()
        childFriend.backgroundColor = .blue
        childFriend.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 80
            layout.flexGrow = 1
            layout.height = 20
            layout.alignSelf = .center
        }
        contentView.addSubview(childFriend)
        view.addSubview(contentView)
        
        view.yoga.applyLayout(preservingOrigin: true)
        let butto = UIButton(frame: CGRect(x: 0, y: 300, width: 100, height: 100))
        butto.backgroundColor = .brown
        view.addSubview(butto)
        butto.addTarget(self, action: #selector(go), for: .touchUpInside)
        
    }
    @objc func go(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(identifier: "SecondViewController")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }


}

