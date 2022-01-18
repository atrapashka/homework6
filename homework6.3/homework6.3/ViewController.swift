//
//  ViewController.swift
//  homework6.3
//
//  Created by Alehandro on 16.01.22.
//

import UIKit

class ViewController: UIViewController {

    private var up: UIButton!
    private var down: UIButton!
    private var left: UIButton!
    private var right: UIButton!
    private var start: UIButton!
    private var label: UILabel!
    
    //MARK: - UIViewController Lifecycle
    //MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .systemGray4
        
        up = UIButton()
        up.backgroundColor = .white
        up.setTitle("▲", for: .normal)
        up.setTitleColor(.black, for: .normal)
        up.addTarget(self, action: #selector(onUpButton), for: .touchUpInside)
        customView.addSubview(up)
        
        down = UIButton()
        down.backgroundColor = .white
        down.setTitle("▼", for: .normal)
        down.setTitleColor(.black, for: .normal)
        down.addTarget(self, action: #selector(onDownButton), for: .touchUpInside)
        customView.addSubview(down)

        left = UIButton()
        left.backgroundColor = .white
        left.setTitle("◀︎", for: .normal)
        left.setTitleColor(.black, for: .normal)
        left.addTarget(self, action: #selector(onLeftButton), for: .touchUpInside)
        customView.addSubview(left)

        right = UIButton()
        right.backgroundColor = .white
        right.setTitle("▶︎", for: .normal)
        right.setTitleColor(.black, for: .normal)
        right.addTarget(self, action: #selector(onRightButton), for: .touchUpInside)
        customView.addSubview(right)
        
        start = UIButton()
        start.backgroundColor = .white
        start.setTitle("START POSITION", for: .normal)
        start.setTitleColor(.black, for: .normal)
        start.addTarget(self, action: #selector(onStartButton), for: .touchUpInside)
        customView.addSubview(start)
        
        label = UILabel()
        label.backgroundColor = .systemIndigo
        label.text = "Move Me!"
        label.textAlignment = .center
        label.textColor = .black
        customView.addSubview(label)
        
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Layout
    //MARK: -
    
    override func viewWillLayoutSubviews() {
        let width: CGFloat = 30
        let height: CGFloat = 30
        let widthRound: CGFloat = 100
        let heightRound: CGFloat = 100
        
        up.frame = CGRect(x: view.bounds.midX - width / 2,
                          y: view.bounds.maxY - 150,
                          width: width,
                          height: height)
        up.layer.cornerRadius = 0.5 * up.bounds.size.width
        let leftRect = up.frame.offsetBy(dx: -25, dy: 25)
        let rightRect = up.frame.offsetBy(dx: 25, dy: 25)
        
        down.frame = CGRect(x: view.bounds.midX - width / 2,
                          y: view.bounds.maxY - 100,
                          width: width,
                          height: height)
        down.layer.cornerRadius = 0.5 * down.bounds.size.width
        
        left.frame = leftRect
        left.layer.cornerRadius = 0.5 * left.bounds.size.width
        
        right.frame = rightRect
        right.layer.cornerRadius = 0.5 * right.bounds.size.width
        
        start.frame = CGRect(x: view.bounds.midX - 75,
                             y: view.bounds.maxY - 55,
                             width: 150,
                             height: 30)
        start.layer.cornerRadius = 10
        
        label.frame = CGRect(x: view.bounds.midX - widthRound / 2,
                             y: view.bounds.midY - heightRound / 2,
                             width: widthRound,
                             height: heightRound)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 0.5 * label.bounds.size.width
    }
    
    //MARK: - Actions
    //MARK: -
    
    @objc func onUpButton() {
        let width: CGFloat = 100
        let height: CGFloat = 100
        let x = UIScreen.main.bounds.width
        let y = UIScreen.main.bounds.height
        let upRect = label.frame.offsetBy(dx: 0, dy: -20)
        let rect = label.frame.offsetBy(dx: 0, dy: 0)
        if label.frame.maxY > height + 50 {
                label.frame = upRect
        } else {
            label.frame = rect
        }
    }
    
    @objc func onDownButton() {
        let width: CGFloat = 100
        let height: CGFloat = 100
        let x = UIScreen.main.bounds.width
        let y = UIScreen.main.bounds.height
        let downRect = label.frame.offsetBy(dx: 0, dy: 20)
        let rect = label.frame.offsetBy(dx: 0, dy: 0)
        if label.frame.maxY < y - height * 2 {
            label.frame = downRect
        } else {
            label.frame = rect
        }
        print(label.frame.minY)
        print(label.frame.maxY)
    }
    
    @objc func onLeftButton() {
        let width: CGFloat = 100
        let height: CGFloat = 100
        let x = UIScreen.main.bounds.width
        let y = UIScreen.main.bounds.height
        let leftRect = label.frame.offsetBy(dx: -20, dy: 0)
        let rect = label.frame.offsetBy(dx: 0, dy: 0)
        if label.frame.maxX > width + 20 {
            label.frame = leftRect
        } else {
            label.frame = rect
        }
    }
    
    @objc func onRightButton() {
        let width: CGFloat = 100
        let height: CGFloat = 100
        let x = UIScreen.main.bounds.width
        let y = UIScreen.main.bounds.height
        let rightRect = label.frame.offsetBy(dx: 20, dy: 0)
        let rect = label.frame.offsetBy(dx: 0, dy: 0)
        if label.frame.maxX < x - 20 {
            label.frame = rightRect
        } else {
            label.frame = rect
        }
    }
    
    @objc func onStartButton() {
        let widthRound: CGFloat = 100
        let heightRound: CGFloat = 100
        label.frame = CGRect(x: view.bounds.midX - widthRound / 2,
                             y: view.bounds.midY - heightRound / 2,
                             width: widthRound,
                             height: heightRound)
    }
}

