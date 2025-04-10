//
//  EventsModel.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 23/03/25.
//

import Foundation



import Foundation

struct BookingEvent: Identifiable,Codable {
    let id = UUID()
    let eventstitle: String
    let eventcity: String
    let totalPrice: Int
    let name: String
    let email: String
    let phone: String
    let bookingimage : String
}

struct Events : Identifiable {
    
    let id = UUID()
    let eventstitle : String
    let eventsdescription : String
    let eventsImage : String
    let eventdate : String
    let eventcity : String
    let eventAddress : String
    let eventsPrice : Int
    let eventstime : String
}


let birthdayEvents = [
    
    Events(eventstitle: "Grand BirthDay Party", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "fefrf", eventdate: "25 March 2025", eventcity: "Mumbai", eventAddress: "Mira Road Near GB Hospital Mumbai", eventsPrice: 3000, eventstime: "6.00 PM"),
    
    Events(eventstitle: "Surat BirthDay Party", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "jkendkn", eventdate: "27 March 2025", eventcity: "Surat", eventAddress: "Mira Road Near GB Hospital Mumbai", eventsPrice: 3000, eventstime: "7.00 PM"),
    
    
    Events(eventstitle: "JK Sharma Birthaday Party", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "person-celebrating-birthday-office", eventdate: "20 April 2025", eventcity: "Chandrapur", eventAddress: "SP Hall Chandrapur", eventsPrice: 9000, eventstime: "6.00 PM")
    
]


let concertEvents = [
    
    Events(eventstitle: "Tamil Music Concert", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "nanna_haadu-nannadu", eventdate: "29 March 2025", eventcity: "Bangalore", eventAddress: "Kalasipalya JP Nagar Nagar YD Ground Bangalore", eventsPrice: 9000, eventstime: "9.00 PM"),
    
    Events(eventstitle: "Bollywwod Music Concert", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "musical-instruments-isolated-party-evening", eventdate: "25 March 2025", eventcity: "Mumbai", eventAddress: "Juhu Beach Mumbai", eventsPrice: 12000, eventstime: "9.00 PM"),
    
    
    Events(eventstitle: "Rocking Beats", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "5556", eventdate: "25 March 2025", eventcity: "Pune", eventAddress: "Baner Balewadi Pune", eventsPrice: 18000, eventstime: "8.30 PM"),
    
    Events(eventstitle: "Marathi Saptasur", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "bdebb", eventdate: "22 May 2025", eventcity: "Pune", eventAddress: "LP Hall Baner Pune", eventsPrice: 240, eventstime: "6.30 PM")

]


let ComedyEvents = [
    
    Events(eventstitle: "RK Sharama Comedy Show", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "vintage-young-man-singing-with-microphone", eventdate: "19 April 2025", eventcity: "Nagpur", eventAddress: "Kamthee JP Nagar Nagar YD Ground Nagpur", eventsPrice: 3000, eventstime: "4.30 PM"),
    
    
    Events(eventstitle: "Great Indian Comedy Show", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "gujarati-comedy-natak_2025-03-04-01-12-32-204_43", eventdate: "23 May 2025", eventcity: "Indore", eventAddress: "YCP Poly Road Nandani Hall Indore", eventsPrice: 600, eventstime: "7.30 PM")
    
    
    
]


let CircusEvents = [
    
    Events(eventstitle: "Royal Circus", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "35817", eventdate: "12 April 2025", eventcity: "Lucknow", eventAddress: "Samarth Ground LP Road Lucknow", eventsPrice: 1000, eventstime: "5.00 PM"),
    
    Events(eventstitle: "RK Circus", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "gymnast-using-hoop", eventdate: "10 April 2025", eventcity: "Delhi", eventAddress: "Samarth Ground LP Road Delhi", eventsPrice: 1000, eventstime: "4.00 PM")
    
]


let WorkShoopEvents = [
    
    Events(eventstitle: "SwiftUI WorkShop", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "high-angle-hands-holding-paper", eventdate: "13 April 2025", eventcity: "Hyderabad", eventAddress: "Nawab Hall Hyderabad", eventsPrice: 900, eventstime: "3.00 PM"),
    
    Events(eventstitle: "PowerBI WorkShop (Online/Offline)", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "eastern-woman-cafe", eventdate: "18 April 2025", eventcity: "Kolkata", eventAddress: "Babu Goswami Apartment", eventsPrice: 130, eventstime: "1.00 PM"),
    
    
    Events(eventstitle: "Kids Mathematics (Online/Offline)", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "blackboard-inscribed-with-scientific-formulas-calculations", eventdate: "15 April 2025", eventcity: "Bangalore", eventAddress: "SP Collage Bangalore", eventsPrice: 190, eventstime: "1.30 PM")
    
]
