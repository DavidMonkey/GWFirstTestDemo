//
//  LoginViewController.swift
//  GWFirstTestDemo
//
//  Created by Admin on 2018/11/27.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var validTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let bids = Bundle.init(for:LoginViewController.self)

       let bidsStr = bids.path(forResource: "MyView", ofType:"nib")
        print("wwwww\(bidsStr ?? "错误")")
        let nibView = bids.loadNibNamed("MyView", owner: self, options: nil)![0] as! UIView
        nibView.backgroundColor = UIColor.red
        self.view.addSubview(nibView)
        
//        let width = VIEW_WIDTH(view: self.view)
//        print("width == \(width)")
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func jumpBtn(_ sender: Any) {
        print("登录")
//
//        var passData = ["PhoneID":"BE352E67-89C2-4C2B-89C3-94C083B9A4",
//                        "PhoneIdfa":"BE352E67-89C2-4C2B-89C3-94C083B9A401",
//                        "ClientSource":"0",
//                        "PhoneType":"1",
//                        "StartCity":"1",
//                        "PhoneVersion":"6.0.8",
//                        "Mobile":"17610068721",
//                        "AuthCode":"123456789",
//                        "imgCodeKey":"",
//                        "ImgCode":"",
//                        "PhoneType":"1",
//                        "StartCityName":"北京"
//                        ]
//
//
//
//        let parms = ["PhoneID":"BE352E67-89C2-4C2B-89C3-94C083B9A4",
//                     "PhoneIdfa":"BE352E67-89C2-4C2B-89C3-94C083B9A401",
//                     "ClientSource":"0",
//                     "PhoneType":"1",
//                     "StartCity":"1",
//                     "PhoneVersion":"6.0.8",
//                     "Path":"http://mhomelogic.uzai.com/Api/",
//                     "ControllerName":"User",
//                     "ActionName":"DynamicLogin",
//                     "PostData":passData
//            ] as [String : Any]
//        parms.keys;
    }
    
    
    
    /*
    (lldb) po paramsList
    ▿ Optional<Dictionary<String, Any>>
    ▿ some : 6 elements
    ▿ 0 : 2 elements
    - key : "PhoneID"
    - value : BE352E67-89C2-4C2B-89C3-94C083B9A401
    ▿ 1 : 2 elements
    - key : "PhoneIdfa"
    - value : 0f607264fc6318a92b9e13c65db7cd3c
    ▿ 2 : 2 elements
    - key : "ClientSource"
    - value : 0
    ▿ 3 : 2 elements
    - key : "PhoneType"
    - value : 1
    ▿ 4 : 2 elements
    - key : "StartCity"
    - value : 1
    ▿ 5 : 2 elements
    - key : "PhoneVersion"
    - value : 6.0.8
    (lld
    */
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

