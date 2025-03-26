//
//  AppBarView.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 21/03/25.
//

import SwiftUI

struct AppBarView: View {
    var detailsaction : (() ->())
    var menuaction : (() -> ())

    var body: some View {
        
        HStack {
                   Button(action: {}) {
                       Image(systemName: "menucard.fill")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 20, height: 20)
                           .foregroundStyle(.black)
                           .padding()
                           .background(Color.white)
                           .cornerRadius(10.0)
                   }

                   Spacer()

                   Button(action: {
                       detailsaction()
                   }) {
                       Image(systemName: "bell.fill")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 20, height: 20)
                           .foregroundStyle(.black)
                           .padding()
                           .background(Color.white)
                           .cornerRadius(10.0)
                   }
               }
               .padding(.horizontal)
    }
}

#Preview {
    AppBarView(detailsaction: {
        print("The tapped on the Details")
    }, menuaction: {
        print("The tapped on the Menu")
    })
}
