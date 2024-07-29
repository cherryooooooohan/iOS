import UIKit

// 引用馬賽圖
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


// 引用拿鐵圖
let latte = UIImage(named: "latte.png")

// 新增兩張拿鐵圖
func addLatte(position: Int) {
    let latteView = UIImageView(image: latte)
    // 設定圖片位置及尺寸
    latteView.frame = CGRect(x: position, y: 300, width: 200, height: 400)
    // 圖片填滿方式
    latteView.contentMode = .scaleAspectFill
    // 在馬賽圖中加入拿鐵圖
    marseilleView.addSubview(latteView)
}

addLatte(position: 100)
addLatte(position: 600)

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

// 重複的emoji
let emoji = "🤍"
let space: CGFloat = 60

func addEmoji(label: UILabel) {
    label.text = emoji
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: 20)
    label.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    label.layer.borderColor = UIColor.white.cgColor
    label.layer.borderWidth = 4.0
    label.layer.cornerRadius = label.frame.size.width / 2
    marseilleView.addSubview(label)
}

// 上下橫排
for i in stride(from: 0, through: marseilleView.frame.width, by: space + 35) {
    // 上排
    let emojiLabelAbove = UILabel(frame: CGRect(x: marseilleView.frame.minX + i, y: marseilleView.frame.minY + space, width: space, height: space))
    // 下排
    let emojiLabelBelow = UILabel(frame: CGRect(x: marseilleView.frame.minX + i, y: marseilleView.frame.maxY - space - 40, width: space, height: space))

    addEmoji(label: emojiLabelAbove)
    addEmoji(label: emojiLabelBelow)
}


