//
//  ViewController.swift
//  class 4
//
//  Created by mac on 2024/3/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 背景圖片
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 393, height: 852))
        backgroundImage.image = UIImage(named: "castle_1242x2208")
               view.addSubview(backgroundImage)

        addSparkle()
    }
    
    // 定義一個函式，用於添加閃爍效果的粒子系統
    func addSparkle() {
        // 創建一個 CAEmitterCell 來定義粒子的屬性
        let sparkleEmitterCell = CAEmitterCell()
        
        // 設置粒子的內容為圖片
        sparkleEmitterCell.contents = UIImage(named: "sparkle")?.cgImage
        // 設置每秒生成的粒子數量
        sparkleEmitterCell.birthRate = 4
        // 設置粒子的生命週期
        sparkleEmitterCell.lifetime = 20
        // 設置粒子的初始速度
        sparkleEmitterCell.velocity = 100
        // 設置粒子的垂直加速度
        sparkleEmitterCell.yAcceleration = 30
        // 設置粒子的縮放比例
        sparkleEmitterCell.scale = 0.06
        // 設置粒子的縮放範圍
        sparkleEmitterCell.scaleRange = 0.3
        // 設置粒子的縮放速度
        sparkleEmitterCell.scaleSpeed = -0.02
        // 設置粒子的自轉角度
        sparkleEmitterCell.spin = 0.5
        // 設置粒子的自轉角度範圍
        sparkleEmitterCell.spinRange = 1
        // 設置粒子的透明度範圍
        sparkleEmitterCell.alphaRange = 0.75
        // 設置粒子的透明度變化速度
        sparkleEmitterCell.alphaSpeed = -0.05
        // 設置粒子發射角度的範圍
        sparkleEmitterCell.emissionRange = .pi
        
        // 創建一個 CAEmitterLayer 來管理粒子系統
        let sparkleEmitterLayer = CAEmitterLayer()
        // 設置粒子系統的位置為視圖的中上方
        sparkleEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)
        // 設置粒子系統的大小
        sparkleEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        // 設置粒子系統的形狀為線性
        sparkleEmitterLayer.emitterShape = .line
        // 設置粒子系統的粒子
        sparkleEmitterLayer.emitterCells = [sparkleEmitterCell]
        
        // 將粒子系統添加到視圖的圖層中
        view.layer.addSublayer(sparkleEmitterLayer)
    }

    
}

// 模擬器
#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "demo")
}
