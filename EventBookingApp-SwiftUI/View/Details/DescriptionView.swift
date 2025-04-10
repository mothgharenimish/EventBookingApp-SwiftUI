//
//  DescriptionView.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 24/03/25.
//

import SwiftUI

struct DescriptionView: View {
    let events : Events
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(events.eventstitle)
            
            
        }
        
    }
}

#Preview {
    DescriptionView(events: Events(eventstitle: "Tamil Music Concert", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "nanna_haadu-nannadu", eventdate: "29 March 2025", eventcity: "Bangalore", eventAddress: "Kalasipalya JP Nagar Nagar YD Ground Bangalore", eventsPrice: 9000, eventstime: "9.00 Pm"))
}
