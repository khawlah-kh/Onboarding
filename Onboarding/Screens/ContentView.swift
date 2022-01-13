//
//  ContentView.swift
//  Onboarding
//
//  Created by khawlah khalid on 13/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State var showingBoarding = false
    @AppStorage("OnboardBeenViewed") var  hasOnboarded = false
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{

                    Image("Teamwork")
                        .resizable()
                        .scaledToFit()
                    Text("This is a demo for onboarding screens")
                    
                    
                }
                
                
                .padding()
                .edgesIgnoringSafeArea(.bottom)
                
                .disabled(showingBoarding)
                .blur(radius: showingBoarding ? 3.0 : 0)
                .navigationTitle("Onboarding Screens")
                if showingBoarding{
                    
                    OnboardingScreens(showingBoarding: $showingBoarding)
                }
            }
            .onAppear {
                hasOnboarded=false // Only for testing
                if !hasOnboarded {
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now()+2){
                        withAnimation {
                            self.showingBoarding.toggle()
                            hasOnboarded=true
                            
                        }
                        
                        
                        
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
