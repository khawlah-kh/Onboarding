//
//  CardView.swift
//  Onboarding
//
//  Created by khawlah khalid on 13/01/2022.
//

import SwiftUI


struct CardView :  View{
    @Binding var showingBoarding:Bool
    let onboardCard : OnboardCard
    var body : some View{
        
        
        VStack{
            
            HStack(alignment:.top){
                Text(onboardCard.title)
                    .font(.title)
                Spacer()
                Button {
                    showingBoarding.toggle()
                    
                } label: {
                    XDismissButton()
                }
                
            }
            .padding(.horizontal)
            
            Image(onboardCard.imageName)
                .resizable()
                .scaledToFit()
            
            Text(onboardCard.text)
                .padding(.horizontal)
            
        }
        
        .frame(width: 350, height: 350)
        .background(RoundedRectangle(cornerRadius: 10,style: .continuous)
                        .fill(Color(.secondarySystemBackground))
                        .shadow(radius: 10)                       )
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(showingBoarding: .constant(true), onboardCard: .init(title: "Login", imageName:"Login", text: "Enter your credentials and log in."))
    }
}
