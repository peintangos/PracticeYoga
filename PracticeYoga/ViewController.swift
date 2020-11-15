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
            layout.flexDirection = .column
//            上下の真ん中
            layout.alignItems = .center
//            左右の真ん中
            layout.justifyContent = .center
        }
        let contentView = UIView()
        contentView.backgroundColor = .green
        contentView.configureLayout { (layout) in
            layout.isEnabled = true
//            layout.marginRight = 10
            layout.marginTop = 30
            layout.height = 80
            layout.width = 250
            layout.flexDirection = .row
            layout.padding = 10
        }
        let view1 = UIView()
        view1.backgroundColor = .red
        view1.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 40
            layout.marginRight = 10
        }
        let view2 = UIView()
        view2.backgroundColor = .blue
        view2.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 80
            layout.height = 10
            layout.flexGrow = 1
//            親のviewに対して真ん中にする
            layout.alignSelf = .center
        }
        let contentView2 = UIView()
        contentView2.backgroundColor = .orange
        contentView2.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.width = 250
            layout.height = 80
            layout.marginTop = 50
        }
        let view3 = UIView()
        view3.backgroundColor = .magenta
        view3.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 10
            layout.flexGrow = 2
        }
        let view4 = UIView()
        view4.backgroundColor = .opaqueSeparator
        view4.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = 10
            layout.flexGrow = 1
        }
        contentView.addSubview(view1)
        contentView.addSubview(view2)
        contentView2.addSubview(view3)
        contentView2.addSubview(view4)
        view.addSubview(contentView)
        view.addSubview(contentView2)
        view.yoga.applyLayout(preservingOrigin: true)
        let butto = UIButton(frame: CGRect(x: self.view.center.x, y: 500, width: 100, height: 100))
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

