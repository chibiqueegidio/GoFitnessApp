//
//  HomeView.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 13/06/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject  var viewModel = HomeViewModel()
    
    
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){

                Spacer()
        
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
                        ProgressCircleView(progress: $viewModel.calories, color: .red, goal: 600)
                        ProgressCircleView(progress: $viewModel.active, color: .blue, goal: 60)
                            .padding(.all,20)
                        ProgressCircleView(progress: $viewModel.stand, color: .green, goal: 12)
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
                    
                    ForEach(viewModel.mockAcitivites,id: \.id) { activity in ActivittyCard ( activity: activity)
                        
                    }

                }.padding(.horizontal)

                    
                HStack {
                        Text("Recent Workouts").font(.title2).bold()
                        Spacer()

                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show More")
                                .padding(.all,10)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(20)
                            
                        }
                        

                    }.padding(.horizontal)
                    
                    LazyVStack {
                        ForEach(viewModel.mockWorkouts,id: \.id) { workout in WorkoutCard ( workout: workout)
                            
                        }
                    }
                    
                    .padding(.horizontal)
                  
                }

                        
                    }
                    
                    
                    
    }
                
                

            }

        



  
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
        
    }
