//
//  FirstViewController.swift
//  sampleTabbar
//
//  Created by Eriko Ichinohe on 2017/11/07.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    //画面が起動された時1回発動（再度画面が表示された時には発動しない！）
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First発動！")
    }
    
    //画面が表示される時常に発動
    override func viewWillAppear(_ animated: Bool) {
        print("First表示！")
        
        //AppDelegateにアクセス
        let myApp = UIApplication.shared.delegate as! AppDelegate
        
        //MARK:関数で行う場合
        myApp.countUpAndSetToLabel(myLabel)
        
//        //グローバル変数（AppDelegateのプロパティ）の値を書き換える（カウントアップ）
//        myApp.myCount += 1
//
//        //カウントアップした数字をラベルに表示
//        myLabel.text = "\(myApp.myCount)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

