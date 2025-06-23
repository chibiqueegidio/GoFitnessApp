//
//  ActivittyCard.swift
//  GoFitnessApp
//
//  Created by Egidio Chibique on 16/06/25.
//

import SwiftUI



struct ActivittyCard: View {
    @State var activity: Activity
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack() {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(activity.title)
                           
                        Text(activity.subtitle)
                          
                    }
                    Spacer()
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintColor)
                        
                    
                    
                    
                }
                
                Text(activity.amount)
                    .font(.title)
                    .bold(true)
                    .padding()
                    
            }
            .padding()
        }
    }
}



struct ActivittyCard_Previews: PreviewProvider {
    static var previews: some View {
        ActivittyCard(activity: Activity(id: 0, title: "Today Steps", subtitle:"Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,812"))
    }
}

//#Preview {
   // ActivittyCard()
//}
