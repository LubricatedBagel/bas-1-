//
//  ViewController.swift
//  basciAnimation
//
//  Created by Cyrus Butcher on 3/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    var myView: UIView!
    var mySecondView: UIView!
    var myViews: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(origin: CGPoint(x: 100, y: 100), size: CGSize(width: 25, height: 25))
        myView = UIView(frame: frame)
        myView.backgroundColor = UIColor(red: 100/255, green: 25/255, blue: 95/255, alpha: 1)
        view.addSubview(myView)
        let frameTwo = CGRect(origin: CGPoint(x: view.center.x, y: view.center.y), size: CGSize(width: 25, height: 25))
        myView.transform = CGAffineTransform(rotationAngle: 2.0)
        mySecondView = UIView(frame: frame)
        mySecondView.backgroundColor = UIColor(red: 100/255, green: 25/55, blue: 95/255, alpha: 1)
    }
    @IBAction func goNextView(_ sender: UIButton) {
        
    }
    func moveOne() {
        var xx = 200
        var yy = 200
        var r = 0.0
        for _ in 1...44 {
            xx += 2
            yy += 2
            r += 7.0
            
            let frame = CGRect(origin: CGPoint(x: xx, y: xx), size: CGSize(width: 2, height: 300))
            myView = UIView(frame: frame)
            myView.backgroundColor = .blue
            myView.transform = CGAffineTransform(rotationAngle: r)
            myViews.append(myView)
        }
        
        for i in myViews {
            view.addSubview(i)
        }
    }
    
    @IBAction func Animate(_ sender: UIButton) {
        let animation = CABasicAnimation(keyPath: "postion")
        animation.fromValue = CGPoint(x: 200, y: 100)
        animation.toValue = view.bounds.size.height
        animation.duration = 0.5
        animation.beginTime = CACurrentMediaTime() + 0.3
        animation.repeatCount = 3
        animation.autoreverses = true
        myView.layer.add(animation, forKey: nil)
    }
    
}

