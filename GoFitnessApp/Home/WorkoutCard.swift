//
//  WorkoutCard.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 16/06/25.
//

import SwiftUI

struct Workout{
    
    let id : Int
    let title : String
    let image : String
    let duration : String
    let date : String
    let calories : String
    
}

struct WorkoutCard: View {
    
  @State var workout : Workout
    
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundStyle(.green)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing:16){
                HStack{
                    Text("Running")
                        .font(.title3).bold(true)
                    
                    Spacer()
                        
                    Text(workout.duration)
                       
                    
                }
                
                HStack{
                    Text(workout.date)
                    
                    Spacer()
                        
                    Text(workout.calories)
                        
                }
               
            }
        }.padding()
    }
}

#Preview {
    WorkoutCard()
}
