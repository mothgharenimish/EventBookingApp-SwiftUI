//
//  TaglineView.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 21/03/25.
//

import SwiftUI

struct TaglineView: View {
    var body: some View {
        
        Text("Explore the \nVarious ")
            .font(.custom("Arvo-Bold", size: 38))
            .foregroundColor(.black)
            + Text("Events")
            .font(.custom("Arvo-Bold", size: 38))
            .fontWeight(.bold)
            .foregroundColor(.black)
    }
}

#Preview {
    TaglineView()
}
