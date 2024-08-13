import UIKit

// 引用馬賽圖片
let marseille = UIImage(named: "marseille.jpeg")
// 顯示圖片的 UIImageView
let marseilleView = UIImageView(image: marseille)

// 圖片大小
marseilleView.frame = CGRect(x: 0, y: 0, width: 900, height: 900)
// 圖片填滿方式
// scaleAspectFill：維持比例填滿整個畫面，超出的部分會隱藏
marseilleView.contentMode = .scaleAspectFill
// 圖片透明度，範圍 0-1
marseilleView.alpha = 0.9

// 引用拿鐵圖片
let latte = UIImage(named: "latte.png")
// 顯示圖片的 UIImageView
let latteView = UIImageView(image: latte)

// 圖片大小
latteView.frame = CGRect(x: 100, y: 300, width: 200, height: 400)
// 圖片填滿方式
// scaleAspectFill：維持比例填滿整個畫面，超出的部分會隱藏
latteView.contentMode = .scaleAspectFill
// 把拿鐵加入馬賽圖
marseilleView.addSubview(latteView)

// 顯示圖片的 UIImageView
let latteView2 = UIImageView(image: latte)

// 圖片大小
latteView2.frame = CGRect(x: 600, y: 300, width: 200, height: 400)
// 圖片填滿方式
// scaleAspectFill：維持比例填滿整個畫面，超出的部分會隱藏
latteView2.contentMode = .scaleAspectFill
// 把拿鐵加入馬賽圖
marseilleView.addSubview(latteView2)

// 顯示文字的 UILabel，設定文字框大小
let marseilleLabel = UILabel(frame: CGRect(x: 0, y: 200, width: 900, height: 100))



// 文字內容
marseilleLabel.text = "Latte in Marseille"
// 文字顏色
marseilleLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
// 文字大小
marseilleLabel.font = UIFont.systemFont(ofSize: 36)
// 文字置中
marseilleLabel.textAlignment = .center

marseilleView.addSubview(marseilleLabel)
