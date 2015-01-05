//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by Fumitoshi Ogata on 2014/12/26.
//  Copyright (c) 2014年 Fumitoshi Ogata. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!    
    var baseView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //スクロールビューを設定
        scrollView.contentSize = CGSizeMake(2000,2000)
        scrollView.userInteractionEnabled = true;
        scrollView.delegate = self
        scrollView.scrollEnabled = true
        scrollView.delaysContentTouches = true
        scrollView.minimumZoomScale = 0.2
        scrollView.maximumZoomScale = 8
        
        //背景画像を設定
        var base = UIImage(named:"back.jpg")
        self.baseView = UIImageView(image:base)
        //読み込み画像を表示領域にあわせる必要がある
        self.baseView.frame = CGRectMake(
            0,
            0,
            2000,
            2000
        )
        self.scrollView.addSubview(self.baseView)

        
        //ボタンを追加
        var button = UIButton()
        button.setTitle("Tap Me!", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitle("Tapped!", forState: .Highlighted)
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        button.frame = CGRectMake(0, 0, 300, 50)        
        button.layer.position = CGPoint(x: self.view.frame.width/2, y:100)
        button.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.addTarget(self, action: Selector("onClickButton:"), forControlEvents: .TouchDown)
        self.scrollView?.addSubview(button)
    }

    func onClickButton(sender: UIButton){
        println("onClickButton:")
        //println("sender.currentTitile: \(sender.currentTitle)")
        //println("sender.tag:\(sender.tag)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func viewForZoomingInScrollView(scrollView: UIScrollView!) -> UIView! {
        return self.baseView
    }
    
    func scrollViewDidEndZooming(scrollView: UIScrollView!, withView view: UIView!, atScale scale: CGFloat){
        //println(scale)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        //println(scrollView.contentOffset)
    }
    
    func getScrollViewCenterPos() -> CGPoint {
        return self.scrollView.contentOffset
    }
}

