//
//  ProgressCircleView.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 14/06/25.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var color: Color
    var goal: Int
    private let  width = 20
    var body: some View {
        ZStack{
            Circle()
                .stroke(color.opacity(0.3), lineWidth: CGFloat(width))
            Circle()
                .trim(from: 0, to: CGFloat(progress)/CGFloat(goal))
                .stroke(color,style: StrokeStyle(lineWidth: CGFloat(width), lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
    }
}


struct ProgressCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircleView(progress: .constant(100), color: .red, goal: 200)
    }
   
    
    
}
