//
//  BookingDetails.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 25/03/25.
//

import SwiftUI

struct BookingDetails: View {
    @ObservedObject var bookingManager = BookingManager.shared
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(hex: "#d7ebec").ignoresSafeArea(.all)
                
                if bookingManager.bookings.isEmpty {
                    VStack {
                        Text("No bookings available.")
                            .font(.custom("Arvo-Bold", size: 18))
                            .foregroundColor(.gray)
                    }
                } else {
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(bookingManager.bookings) { bookingevent in
                                BookingCard(bookingevents: bookingevent)
                            }
                        }
                        .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Booking Details")
        }
        
        
    }
}

#Preview {
    BookingDetails()
}
