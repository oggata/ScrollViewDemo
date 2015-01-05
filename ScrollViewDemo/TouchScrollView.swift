//
//  TouchScrollView.swift
//  ScrollViewDemo
//
//  Created by Fumitoshi Ogata on 2014/12/26.
//  Copyright (c) 2014年 Fumitoshi Ogata. All rights reserved.
//

import Foundation
import UIKit

class TouchScrollView: UIScrollView {
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println("touchbegan")
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        println("touchmoved")
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        println("touchended")
    }
}
