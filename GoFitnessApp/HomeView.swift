//
//  HomeView.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 13/06/25.
//

import SwiftUI

struct HomeView: View {
    @State private var calories : Int = 123
    @State private var active : Int = 52
    @State private var stand : Int = 8
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack {
                Text("Welcome to GoFitness")
                    .font(.largeTitle)
                    .padding()
            }
            
            HStack {
                VStack() {
                    VStack(alignment: .leading, spacing: 8){
                        Text("Colories")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.red)
                        Text("123 kcal")
                            .font(.callout)
                        
                    }.padding(.bottom)
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Active")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.green)
                        Text("52 Mins")
                            .font(.callout)
                        
                    }.padding(.bottom)
                    
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Stand")
                            .font(.callout)
                            .bold()
                            .foregroundColor(.blue)
                        Text("8 hours")
                            .font(.callout)
                        
                    }.padding(.bottom)
                    
                }
            }
            Spacer()
            
            ZStack{
                ProgressCircleView(progress: $calories, color: .red, goal: 600)
                    .padding(.all,20)
                ProgressCircleView(progress: $calories, color: .blue, goal: 600)
                    .padding(.all,20)
                ProgressCircleView(progress: $calories, color: .green, goal: 600)
                    .padding(.all,20)
             
                
            }
        }
    }
    
}

        #Preview {
    HomeView()
}
