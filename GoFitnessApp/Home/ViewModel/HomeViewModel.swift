//
//  Untitled.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 23/06/25.
//

import Foundation
import SwiftUI
class HomeViewModel : ObservableObject {
    @State  var calories : Int = 123
    @State  var active : Int = 52
    @State  var stand : Int = 8
    
    var mockAcitivites  = [
        Activity(id: 0, title: "Today Steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,813"),
        Activity(id: 1, title: "Today Steps", subtitle:"Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today Steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,812"),
        Activity(id: 3, title: "Today Steps", subtitle:"Goal 50,000", image: "figure.walk", tintColor: .purple, amount: "55,812"),
    
    ]
    
    var mockWorkouts = [ Workout(id: 0, title: "Running", image: "figure.run", duration: "51 mins", date: "Aug 1", calories: "812 kcal", tintColor: .black) ,
                         Workout(id: 1, title: "Straight Training", image: "figure.run", duration: "51 mins", date: "Aug 11", calories: "812 kcal", tintColor: .red),
                         Workout(id: 2, title: "Walk", image: "figure.run", duration: "5 mins", date: "Aug 1", calories: "812 kcal", tintColor: .cyan),
                         Workout(id: 3, title: "Running", image: "figure.run", duration: "1 mins", date: "Aug 12", calories: "812 kcal", tintColor: .blue)
                         
]
    
    
    
}
