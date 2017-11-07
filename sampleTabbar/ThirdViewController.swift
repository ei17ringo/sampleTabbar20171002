//
//  ThirdViewController.swift
//  sampleTabbar
//
//  Created by Eriko Ichinohe on 2017/11/07.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //画面が表示される時常に発動
    override func viewWillAppear(_ animated: Bool) {
        print("Third表示！")
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
