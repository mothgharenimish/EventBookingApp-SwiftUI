//
//  EventsCategory.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 23/03/25.
//

import SwiftUI

struct EventsCategory: View {
    
    let isActive : Bool
    let text : String
    var body: some View {
        
        VStack {
            
            
            Text(text)
                .font(.custom("Arvo-Bold", size: 15))
                .foregroundStyle(isActive ? .white : .red)
                .padding(.horizontal,5)
                
            
        }
        
           .frame(width: 180,height: 37)
           .background(isActive ? .red : .white)
           .cornerRadius(15.0)
           .overlay(
                       RoundedRectangle(cornerRadius: 15.0)
                           .stroke(isActive ? Color.clear : Color.red, lineWidth: 1.5)
                   )

    }
}

#Preview {
    EventsCategory(isActive: true, text: "Music Concert")
}
