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
    let tintColor : Color
    
}

struct WorkoutCard: View {
    
  @State var workout : Workout
    
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing:16){
                HStack{
                    Text(workout.title)
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
        }.padding(.horizontal)
    }
}

//#Preview {
  //  WorkoutCard(workout: <#Workout#>)
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutCard(workout:Workout(id: 0, title: "Running", image: "figure.run", duration: "51 mins", date: "Today", calories: "812 kcal", tintColor: .cyan));
    }
}
