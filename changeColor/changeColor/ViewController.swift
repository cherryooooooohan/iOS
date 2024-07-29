//
//  ViewController.swift
//  changeColor
//
//  Created by 🍒 Cherry on 2024/8/8.
//

import UIKit

class ViewController: UIViewController {
    // 圖片
    @IBOutlet weak var bubbleView: UIImageView!
    @IBOutlet weak var flowerView: UIImageView!
    @IBOutlet weak var maoView: UIImageView!
    // 三張圖片底下的大背景
    @IBOutlet weak var girlsFrame: UIView!
    
    // RGBA Slider
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    // segmentedControl
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 大背景新增邊框和圓角
        girlsFrame.layer.cornerRadius = 15
        girlsFrame.clipsToBounds = true
        girlsFrame.layer.borderWidth = 6
        
        let r = CGFloat(154/255.0)
        let g = CGFloat(6/255.0)
        let b = CGFloat(11/255.0)
        let a = CGFloat(1.0)
        
        girlsFrame.layer.borderColor = UIColor(red: r, green: g, blue: b, alpha: a).cgColor
    }
    

    // 調整slider時：依slider的值，調整目前的ImageView背景色
    @IBAction func changeColor(_ sender: Any) {
        // 取得目前四個slider的值
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        let a = CGFloat(alphaSlider.value)
        
        // 取得目前的ImageView
        var selectedView: UIImageView?
        getSelectedView(&selectedView)
        
        // 調整背景色
        if let selectedView = selectedView {
            selectedView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: a)
        }
        
    }
    
    // 切換人物時：依目前的ImageView背景色，調整slider
    @IBAction func switchControl(_ sender: Any) {
        var r: CGFloat = 1
        var g: CGFloat = 1
        var b: CGFloat = 1
        var a: CGFloat = 1
        
        // 取得目前的ImageView
        var selectedView: UIImageView?
        getSelectedView(&selectedView)
        
        if let selectedView = selectedView {
            // 取得目前的ImageView背景色
            selectedView.backgroundColor?.getRed(&r, green: &g, blue: &b, alpha: &a)
            
            // 調整slider
            setSlider(r: Float(r), g: Float(g), b: Float(b), a: Float(a))
        }
    }
    
    // 兩個重設按鈕：重設目前的ImageView或全部重設
    @IBAction func resetColor(_ sender: UIButton) {
        // 初始值
        let original = UIColor(red: CGFloat(1), green: CGFloat(1), blue: CGFloat(1), alpha: CGFloat(1))
        
        // 以tag判斷是哪個按鈕
        switch sender.tag {
        // 重設目前的ImageView
        case 0:
            // 取得目前的ImageView
            var selectedView: UIImageView?
            getSelectedView(&selectedView)
            
            // 將目前的ImageView背景色設為初始值
            if let selectedView = selectedView {
                selectedView.backgroundColor = original
            }
        // 全部重設
        case 1:
            // 將每個ImageView背景色設為初始值
            bubbleView.backgroundColor = original
            flowerView.backgroundColor = original
            maoView.backgroundColor = original
        default:
            break
        }
        
        // 調整slider
        setSlider(r: 1, g: 1, b: 1, a: 1)
    }
    
    // 取得目前的ImageView
    func getSelectedView(_ selectedView: inout UIImageView?) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            selectedView = bubbleView
        case 1:
            selectedView = flowerView
        case 2:
            selectedView = maoView
        default:
            break
        }
    }
    
    // 調整slider
    func setSlider(r: Float, g: Float, b: Float, a: Float) {
        redSlider.value = r
        greenSlider.value = g
        blueSlider.value = b
        alphaSlider.value = a
    }
}

