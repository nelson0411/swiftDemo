//
//  VisitorView.swift
//  weibo-ios
//
//  Created by wuna on 2019/9/8.
//  Copyright © 2019 wuna. All rights reserved.
//

import UIKit

class VisitorView: UIView {

    //使用纯代码开发使用
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    //使用 xib 开始使用的入口
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - 懒加载空间
    //private lazy var iconView: UIImageView = UIImageView(image: UIImage(named: ""))
    private lazy var iconView: UIImageView = {
        var iconView = UIImageView()
        iconView.backgroundColor = UIColor.orange
        iconView.translatesAutoresizingMaskIntoConstraints = false
        return iconView
    }()
    
    //MARK: - 设置视图信息
    func setupInfo(imageName: String?, title: String, color: UIColor) {
        iconView.backgroundColor = color
        startAnim()
    }
    
    private func startAnim() {
        let anim = CABasicAnimation(keyPath: "transform.rotation")
        anim.toValue = 2 * Double.pi
        anim.repeatCount = MAXFLOAT
        anim.duration = 20
        anim.isRemovedOnCompletion = false
        //添加到图层
        iconView.layer.add(anim, forKey: nil)
    }
}

extension VisitorView {
    
    //设置UI
    private func setupUI() {
        //1、添加控件
        //iconView.bounds = CGRect(x: 0, y: 0, width: 150, height: 150)
        //iconView.center = self.center
        addSubview(iconView)
        
        //2、设置自动布局
        addConstraint(NSLayoutConstraint(item: iconView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: iconView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1.0, constant: 0))
        addConstraint(NSLayoutConstraint(item: iconView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150))
        addConstraint(NSLayoutConstraint(item: iconView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150))
    }
}
