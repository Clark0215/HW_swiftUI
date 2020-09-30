//
//  ContentView.swift
//  HW_swiftUI
//
//  Created by User10 on 2020/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Group{
            Path { (path) in
                path.addArc(center: CGPoint(x: 200, y: 400), radius: 90,
                startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
                }.fill(Color(red: 0.46, green: 0.26, blue: 1))
                
            
                Path { (path) in
                    path.move(to: CGPoint(x: 110, y: 420))
                    path.addLine(to: CGPoint(x: 290, y: 420))
                    path.addLine(to: CGPoint(x: 290, y: 550))
                    path.addLine(to: CGPoint(x: 110, y: 550))
                }.fill(Color( red: 0.46, green: 0.26, blue: 1))

                Path(roundedRect: CGRect(x: 110, y: 470, width: 180,
                    height: 100), cornerRadius: 30).fill(Color( red: 0.46, green: 0.26, blue: 1))
                Path(roundedRect: CGRect(x: 50, y: 400, width: 45,
                        height: 130), cornerRadius: 30).fill(Color( red: 0.46, green: 0.26, blue: 1))
                Path(roundedRect: CGRect(x: 300, y: 330, width: 45,
                        height: 130), cornerRadius: 30).fill(Color( red: 0.46, green: 0.26, blue: 1)).rotationEffect(.degrees(-330))
                
                Path(roundedRect: CGRect(x: 145, y: 500, width: 45,
                        height: 130), cornerRadius: 30).fill(Color( red: 0.46, green: 0.26, blue: 1))
                Path(roundedRect: CGRect(x: 215, y: 500, width: 45,
                        height: 130), cornerRadius: 30).fill(Color( red: 0.46, green: 0.26, blue: 1))
                Path(ellipseIn: CGRect(x: 215, y: 345, width: 30, height: 30)).fill(Color.white)
                Path(ellipseIn: CGRect(x: 155, y: 345, width: 30, height: 30)).fill(Color.white)
                Path { (path) in
                    path.move(to: CGPoint(x: 130, y: 290))
                    path.addLine(to: CGPoint(x: 160, y: 340))
                    path.addLine(to: CGPoint(x: 135, y: 290))
                }.stroke(Color(red: 0.46, green: 0.26, blue: 1), lineWidth: 5)
        }
            Path { (path) in
                path.move(to: CGPoint(x: 260, y: 290))
                path.addLine(to: CGPoint(x: 230, y: 340))
                path.addLine(to: CGPoint(x: 265, y: 290))
            }.stroke(Color(red: 0.46, green: 0.26, blue: 1), lineWidth: 5)
            Group{
                apple().scaleEffect(0.35).offset(x: 200, y: 80)
                apple().scaleEffect(0.3).offset(x: 130, y: -85)
                apple().scaleEffect(0.3).offset(x: 70, y: -125)
                apple().scaleEffect(0.3).offset(x: -45, y: -95)
                apple().scaleEffect(0.3).offset(x: -125, y: -115)
            }
            Text("嘔嘔嘔嘔嘔嘔").offset(x: 0, y: 300).font(.system(size:50))
    }.background(Image("tree").offset(x: -100, y: -250), alignment: .bottomLeading)
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

struct apple: View {
    var body: some View {
        ZStack{
            Group{
                Path { (path) in
                    path.move(to: CGPoint(x: 158, y: 68))
                    path.addQuadCurve(to: CGPoint(x: 89, y: 56), control: CGPoint(x: 139, y: 34))
                    path.addQuadCurve(to: CGPoint(x: 75, y: 56), control: CGPoint(x: 82, y: 57))
                    path.addQuadCurve(to: CGPoint(x: 13, y: 66), control: CGPoint(x: 35, y: 37))
                    path.addQuadCurve(to: CGPoint(x: 0, y: 109), control: CGPoint(x: 0, y: 82))
                    path.addQuadCurve(to: CGPoint(x: 43, y: 197), control: CGPoint(x: 1, y: 169))
                    path.addQuadCurve(to: CGPoint(x: 60, y: 198), control: CGPoint(x: 50, y: 202))
                    path.addQuadCurve(to: CGPoint(x: 107, y: 197), control: CGPoint(x: 83, y: 186))
                    path.addQuadCurve(to: CGPoint(x: 128, y: 197), control: CGPoint(x: 120, y: 201))
                    path.addQuadCurve(to: CGPoint(x: 163, y: 147), control: CGPoint(x: 146, y: 190))
                    path.addQuadCurve(to: CGPoint(x: 136, y: 107), control: CGPoint(x: 136, y: 138))
                    path.addQuadCurve(to: CGPoint(x: 158, y: 68), control: CGPoint(x: 133, y: 82))
                    path.closeSubpath()
                }
                .fill(Color(red: 1, green: 0, blue: 0))
                Path { (path) in
                    path.move(to: CGPoint(x: 121, y: 0))
                    path.addQuadCurve(to: CGPoint(x: 81, y: 45), control: CGPoint(x: 89, y: 9))
                    path.addQuadCurve(to: CGPoint(x: 121, y: 0), control: CGPoint(x: 115, y: 39))
                    path.closeSubpath()
                }
                .fill(Color(red: 0, green: 1, blue: 0))
            }
        }
    }
}
