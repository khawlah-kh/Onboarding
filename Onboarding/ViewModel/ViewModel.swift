//
//  ViewModel.swift
//  Onboarding
//
//  Created by khawlah khalid on 13/01/2022.
//

import Foundation



final class ViewModel : ObservableObject{
    
    @Published var  onboardsCards : [OnboardCard] = [.init(title: "Login", imageName:"Login", text: "Enter your credentials and log in."),
                                                     .init(title:"Update Profile", imageName:"Profile", text: "Make sure you update your profile and avatar.")
                                                     ,.init(title: "Participate", imageName: "Engage", text: "Engage with others online.  Join the community."),.init(title: "Leave Feedback", imageName: "LeaveFeedback", text: "We want to hear from you so please let us know what you think.")
                                                      ]
    
    func newCard (card : OnboardCard){
        
        
        self.onboardsCards.append(card)
    }
    
    
}

