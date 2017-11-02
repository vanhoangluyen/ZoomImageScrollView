//
//  ViewController.swift
//  ZoomImageScrollView
//
//  Created by Luyen on 11/2/17.
//  Copyright © 2017 Luyen. All rights reserved.
//

import UIKit

class ZoomImage: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var imageZoom: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.delegate = self
            scrollView.contentSize = imageZoom.frame.size
            scrollView.maximumZoomScale = 4.0
            scrollView.minimumZoomScale = 1.0
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageZoom
        }

}

