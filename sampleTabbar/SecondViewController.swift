//
//  SecondViewController.swift
//  sampleTabbar
//
//  Created by Eriko Ichinohe on 2017/11/07.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //画面が表示される時常に発動
    override func viewWillAppear(_ animated: Bool) {
        print("Second表示！")
        
        //AppDelegateにアクセス
        let myApp = UIApplication.shared.delegate as! AppDelegate
        
        //グローバル変数（AppDelegateのプロパティ）の値を書き換える（カウントアップ）
        myApp.myCount += 1
        
        //カウントアップした数字をラベルに表示
        myLabel.text = "\(myApp.myCount)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

