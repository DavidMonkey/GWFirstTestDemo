//
//  FirstViewController.swift
//  GWFirstTestDemo
//
//  Created by Admin on 2018/11/19.
//

import UIKit


public class FirstViewController: UIViewController {

    override public func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.orange
        let jumpButton = UIButton(type: UIButton.ButtonType.custom)
        jumpButton.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        jumpButton.setAttributedTitle(NSAttributedString.init(string: "点一下"), for: UIControl.State.normal)
        jumpButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        jumpButton.backgroundColor = UIColor.yellow
        jumpButton.isUserInteractionEnabled = true
        jumpButton.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        jumpButton.addTarget(self, action: #selector(clickTap), for:UIControl.Event.touchUpInside )
        self.view.addSubview(jumpButton)

        // Do any additional setup after loading the view.
    }
    @objc func clickTap() {
        print("被点击了")
        
//        let leftProductView = Bundle.main.loadNibNamed("LoginViewController", owner:self, options: nil)![0] as! LoginViewController
        
       let bids = Bundle.init(for:LoginViewController.self)
        
        let leftProductView = LoginViewController.init(nibName: "LoginViewController", bundle: bids)
//                let leftProductView = LoginViewController()
    self.navigationController?.pushViewController(leftProductView, animated: true)
        
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
