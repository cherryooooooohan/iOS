import MapKit
import Foundation

var time = Date()
print(time)

func celcius(fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
}

print("現在是攝氏 \(celcius(fahrenheit: 64)) 度")
