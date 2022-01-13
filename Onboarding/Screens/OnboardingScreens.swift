//
//  OnboardingScreens.swift
//  Onboarding
//
//  Created by khawlah khalid on 13/01/2022.
//

import SwiftUI

struct OnboardingScreens: View {
    
    @Binding var showingBoarding:Bool
    @StateObject var vm = ViewModel()
    
    var body: some View {
        VStack{
            TabView{
                
                ForEach(vm.onboardsCards){card in
                    CardView(showingBoarding: $showingBoarding, onboardCard: card)
                }
                
                
            }
            .frame(height: 450 )
            .padding(.bottom)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            Spacer()
        }
    }
}

struct OnboardingScreens_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreens(showingBoarding: .constant(true))
    }
}

