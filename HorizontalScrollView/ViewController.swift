//
//  ViewController.swift
//  HorizontalScrollView
//
//  Created by iMac on 4/25/18.
//  Copyright © 2018 iNazim. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate{

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var scrollView: UIScrollView!
    
    var contentWidth : CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        for image in 0...2 {
            let imageToDesplay = UIImage(named: "\(image).png")
            let imageView = UIImageView(image: imageToDesplay)
            contentWidth += view.frame.width
            let xCoordinate = view.frame.midX + view.frame.width * CGFloat(image)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: xCoordinate - 50, y: (view.frame.height/2)-50, width: 100, height: 100)
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      // print(scrollView.contentOffset)
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(414))
    }

    


}

