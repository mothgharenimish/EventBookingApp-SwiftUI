//
//  BookingCard.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 25/03/25.
//

import SwiftUI

struct BookingCard: View {
    
    let bookingevents : BookingEvent
    var body: some View {
        
        HStack {
            
            
            Image(bookingevents.bookingimage)
                .resizable()
                .frame(width: 120,height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .padding(.leading)
            
            VStack(alignment: .leading,spacing: 5) {
                
                
                Text(bookingevents.eventstitle)
                    .font(.custom("Arvo-Bold", size: 16))
                    .foregroundColor(.black)
                
                Text(bookingevents.eventcity)
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.black)
                
                
                Text(bookingevents.name)
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.black)
                
                Text(bookingevents.phone)
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.black)
                
                Text("Rs \(bookingevents.totalPrice)")
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.black)
                
                
                

                
                
                
                
            }
            .padding(.leading,5)

            
        }
        
        .frame(width: 380,height: 140,alignment: .leading)
        .background(Color(hex: "#569778"))
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(radius: 8.0)
    }
}

#Preview {
    BookingCard(bookingevents: BookingEvent(eventstitle: "Tamil Music Concert", eventcity: "Vijaywada", totalPrice: 1200, name: "Fatima Shaikh", email: "faitma@gmail.com", phone: "9284175645", bookingimage: "jkendkn"))
}
