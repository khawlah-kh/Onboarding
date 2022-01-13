//
//  XDismissButton.swift
//  Onboarding
//
//  Created by khawlah khalid on 13/01/2022.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        
        ZStack{
            Circle()
                .frame(width: 28, height: 28)
                .foregroundColor(.white)
        Image(systemName: "xmark.circle.fill")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundColor(.accentColor)
            
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}
