//
//  EventsCard.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 23/03/25.
//

import SwiftUI

struct EventsCard: View {
    
    let events : Events
    var body: some View {
        
        HStack {
            
            Image(events.eventsImage)
                .resizable()
                .frame(width: 120,height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .padding(.leading)
            
            
            VStack(alignment: .leading,spacing: 10){
                
                
                Text(events.eventstitle)
                    .font(.custom("Arvo-Bold", size: 16))
                    .foregroundColor(.white)
                
                Text(events.eventdate)
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.white)
                
                Text(events.eventcity)
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.white)
                
                Text("Rs \(events.eventsPrice)")
                    .font(.custom("Arvo-Bold", size: 14))
                    .foregroundColor(.white)
            }
            .padding(.leading,5)
        }
        
        .frame(width: 380,height: 140,alignment: .leading)
        .background(Color(hex: "#012b58"))
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(radius: 8.0)
    }
}

#Preview {
    EventsCard(events: Events(eventstitle: "Tamil Music Concert", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "nanna_haadu-nannadu", eventdate: "29 March 2025", eventcity: "Bangalore", eventAddress: "Kalasipalya JP Nagar Nagar YD Ground Bangalore", eventsPrice: 9000, eventstime: "9.00 PM"))
}
