//
//  ViewController.swift
//  textSplitSample
//
//  Created by Tomoyuki Hayakawa on 2018/12/06.
//  Copyright © 2018 Tomoyuki Hayakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // この変数にとってきた文字列を入れる var で宣言する
    let inputText = "こんにちわ*12/8*今日は学校で国語の授業がありました．"
    
    var titleText: String!
    var dateText: String!
    var diaryText: String!
    
    var tmpText: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dxtString(texts: inputText)
        
    }
    
    // テキストから一行づつ文字列を抽出
    func dxtString(texts: String) {
        
        // 一行
        var line: String = ""
        // 一行の集まり
        var lines: [String] = []
        
        // textsを先頭から一文字づつ比較していく
        for char in texts { // textsの文字が順番にcharに入る
            // charの中身を比較
            if char == "*" { // 「*」だった場合
                lines.append(line) // 仮格納していたものを配列へ格納
                line = ""   // 仮格納をからにする
            } else {    // 「*」じゃなかった場合
                line.append(char)   // line(1行として)へ仮格納
            }
        }
        // 一番最後の行をしまう
        lines.append(line)
        print(lines)
    }


}

