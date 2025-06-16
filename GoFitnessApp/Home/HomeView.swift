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
    
    
    var mockAcitivites  = [
        Activity(id: 0, title: "Today Steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,813"),
        Activity(id: 1, title: "Today Steps", subtitle:"Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today Steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
        Activity(id: 3, title: "Today Steps", subtitle:"Goal 50,000", image: "figure.walk", tintColor: .purple, amount: "55,812"),
    
        
    ]
    
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack {
                Spacer()
                Text("Welcome")
                    .font(.largeTitle).bold()
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
                Spacer()
            
            
            ZStack{
                ProgressCircleView(progress: $calories, color: .red, goal: 600)
                ProgressCircleView(progress: $active, color: .blue, goal: 60)
                    .padding(.all,20)
                ProgressCircleView(progress: $stand, color: .green, goal: 12)
                    .padding(.all,40)
             
            }.padding(.horizontal)
            
            Spacer()
                
            }
            .padding()
            
            HStack {
                Text("Fitness Activity").font(.title2).bold()
                Spacer()
                Button {
                    print("show more")
                } label: {
                    Text("Show More")
                        .padding(.all,10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                
            }
            .padding(.horizontal)
            
            LazyVGrid(columns: Array(repeating: GridItem(spacing : 20), count: 2)) {
                
                ForEach(mockAcitivites,id: \.id) { activity in ActivittyCard ( activity: activity)
                    
                }
                
                
               
            }.padding(.horizontal)
       
            
        }
    }
    
}

        #Preview {
    HomeView()
}
