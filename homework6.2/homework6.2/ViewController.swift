//
//  ViewController.swift
//  homework6.2
//
//  Created by Alehandro on 16.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    private var fillButton: UIButton!
    private var clearButton: UIButton!
    private var square1: UILabel!
    private var square2: UILabel!
    private var square3: UILabel!
    private var square4: UILabel!
    private var square5: UILabel!
    private var square6: UILabel!
    private var square7: UILabel!
    private var square8: UILabel!

    //MARK: - UIViewController Lyfecycle
    //MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .systemGray
        
        fillButton = UIButton()
        fillButton.backgroundColor = .white
        fillButton.setTitle("FILL", for: .normal)
        fillButton.setTitleColor(.purple, for: .normal)
        fillButton.addTarget(self, action: #selector(onFillButton), for: .touchUpInside)
        customView.addSubview(fillButton)
        
        clearButton = UIButton()
        clearButton.backgroundColor = .white
        clearButton.setTitle("CLEAR", for: .normal)
        clearButton.setTitleColor(.orange, for: .normal)
        clearButton.addTarget(self, action: #selector(onClearButton), for: .touchUpInside)
        customView.addSubview(clearButton)
        
        square1 = UILabel()
        customView.addSubview(square1)
        square2 = UILabel()
        customView.addSubview(square2)
        square3 = UILabel()
        customView.addSubview(square3)
        square4 = UILabel()
        customView.addSubview(square4)
        square5 = UILabel()
        customView.addSubview(square5)
        square6 = UILabel()
        customView.addSubview(square6)
        square7 = UILabel()
        customView.addSubview(square7)
        square8 = UILabel()
        customView.addSubview(square8)
        
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Layout
    //MARK: -
    
    override func viewWillLayoutSubviews() {
        let width: CGFloat = 100
        let height: CGFloat = 50
        
        fillButton.frame = CGRect(x: view.bounds.midX - 150,
                                  y: view.bounds.maxY - 80,
                                  width: width,
                                  height: height)
        fillButton.layer.cornerRadius = 15
        
        clearButton.frame = CGRect(x: view.bounds.midX + 50,
                                   y: view.bounds.maxY - 80,
                                   width: width,
                                   height: height)
        clearButton.layer.cornerRadius = 15
    }
    
    //MARK: - Actions
    //MARK: -
    
    @objc func onFillButton() {
        square1.backgroundColor = .orange
        square1.frame = CGRect(x: view.bounds.minX + 30, y: view.bounds.minY + 50, width: 170, height: 170)
        square1.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect2 = square1.frame.offsetBy(dx: 190, dy: 0)
        
        square2.backgroundColor = .orange
        square2.frame = squareRect2
        square2.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect3 = square2.frame.offsetBy(dx: 0, dy: 190)
        
        square3.backgroundColor = .orange
        square3.frame = squareRect3
        square3.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect4 = square3.frame.offsetBy(dx: -190, dy: 0)

        square4.backgroundColor = .orange
        square4.frame = squareRect4
        square4.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect5 = square4.frame.offsetBy(dx: 0, dy: 190)
        
        square5.backgroundColor = .orange
        square5.frame = squareRect5
        square5.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect6 = square5.frame.offsetBy(dx: 190, dy: 0)
        
        square6.backgroundColor = .orange
        square6.frame = squareRect6
        square6.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect7 = square6.frame.offsetBy(dx: 0, dy: 190)
        
        square7.backgroundColor = .orange
        square7.frame = squareRect7
        square7.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
        let squareRect8 = square7.frame.offsetBy(dx: -190, dy: 0)
        
        square8.backgroundColor = .orange
        square8.frame = squareRect8
        square8.backgroundColor = UIColor.init(red: CGFloat.random(in: 0...1),
                                               green: CGFloat.random(in: 0...1),
                                               blue: CGFloat.random(in: 0...1),
                                               alpha: 1)
    }
    
    @objc func onClearButton() {
        square1.backgroundColor = .systemGray
        square2.backgroundColor = .systemGray
        square3.backgroundColor = .systemGray
        square4.backgroundColor = .systemGray
        square5.backgroundColor = .systemGray
        square6.backgroundColor = .systemGray
        square7.backgroundColor = .systemGray
        square8.backgroundColor = .systemGray
    }


}

