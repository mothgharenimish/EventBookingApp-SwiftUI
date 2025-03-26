//
//  EventDetails.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 24/03/25.
//

import SwiftUI

struct EventDetails: View {
    @StateObject private var seatquantity = IncretDecret()
    var events : Events
    @Environment(\.presentationMode) var presentationMode
    var bookingEvents: [BookingEvent] = []
    
    @State private var showAlert = false
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color(hex: "#d7ebec").ignoresSafeArea(.all)
                
                ScrollView(.vertical,showsIndicators: false) {
                    
                    VStack(alignment: .leading) {
                        
                        ZStack(alignment: .top) {
                            
                            Image(events.eventsImage)
                                .resizable()
                                .frame(height: 400).frame(maxWidth: .infinity)
                            
                            HStack {
                                
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                },
                                       label: { Image("icons8-back-arrow-50 (1)").resizable().frame(width: 20, height: 20) })
                                .frame(width: 34,height:34)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                
                                Spacer()
                                
                                Button(action: {  },
                                       label: { Image("icons8-heart-50").resizable().frame(width: 20, height: 20) })
                                .frame(width: 34,height:34)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                
                                
                            }
                            .padding(.horizontal, 24).padding(.top, 46)
                            
                        }
                        
                        VStack(alignment:.leading) {
                            Text(events.eventstitle)
                                .font(.custom("Arvo-Bold", size: 26))
                                .foregroundColor(.black)
                                .padding(.horizontal,12)
                                .padding(.top,10)
                                .padding(.bottom,3)
                            
                            Text(events.eventcity)
                                .font(.custom("Arvo-Bold", size: 19))
                                .foregroundColor(.black)
                                .padding(.horizontal,12)
                                .padding(.bottom,3)
                            
                            HStack {
                                
                                Image("icons8-location-30")
                                    .resizable()
                                    .frame(width:20,height: 20)
                                
                                Text(events.eventAddress)
                                    .font(.custom("Arvo-Bold", size: 15))
                                    .foregroundColor(.black)
                            }
                            .padding(.horizontal,12)
                            .padding(.bottom,3)
                            
                            
                            HStack {
                                
                                Image("icons8-date-48")
                                    .resizable()
                                    .frame(width:20,height: 20)
                                
                                Text(events.eventdate)
                                    .font(.custom("Arvo-Bold", size: 15))
                                    .foregroundColor(.black)
                            }
                            .padding(.horizontal,12)
                            .padding(.bottom,3)
                            
                            
                            HStack {
                                
                                Image("icons8-time-30")
                                    .resizable()
                                    .frame(width:20,height: 20)
                                
                                Text(events.eventstime)
                                    .font(.custom("Arvo-Bold", size: 15))
                                    .foregroundColor(.black)
                            }
                            .padding(.horizontal,12)
                            .padding(.bottom,9)
                            
                            
                            Text("Description")
                                .font(.custom("Arvo-Bold", size: 14))
                                .foregroundColor(.black)
                                .padding(.horizontal,12)
                                .padding(.bottom,3)
                            
                            
                            Text(events.eventsdescription)
                                .font(.custom("Arvo-Bold", size: 13))
                                .foregroundColor(.black)
                                .padding(.horizontal,12)
                            
                            
                            HStack {
                                
                                HStack {
                                    //                        Minus Button
                                    Button(action: {
                                        if seatquantity.count > 0 {
                                            seatquantity.count -= 1
                                        }
                                    }) {
                                        Image(systemName: "minus")
                                            .frame(width: 20,height: 20)
                                            .foregroundColor(.white)
                                            .padding(.all, 8)
                                            .background(Color(hex: "#791c05"))
                                            .clipShape(Circle())
                                    }
                                    
                                    Text("\(seatquantity.count)")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, 8)
                                    
                                    //                        Plus Button
                                    Button(action: {
                                        
                                        seatquantity.count += 1
                                    }) {
                                        Image(systemName: "plus")
                                            .frame(width: 20,height: 20)
                                            .foregroundColor(.white)
                                            .padding(.all, 8)
                                            .background(Color(hex: "#791c05"))
                                            .clipShape(Circle())
                                    }
                                }
                                
                                Button{
                                    
                                    //The alert open will be here
                                    if seatquantity.count > 0 {
                                                                            showAlert = true
                                                                      
                                    }
                                } label: {
                                    
                                    if seatquantity.count == 0 {
                                        
                                        Text("Event price")
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .semibold))
                                            .frame(maxWidth: .infinity, minHeight: 52)
                                            .background(.black)
                                            .cornerRadius(15)
                                    }
                                    else {
                                        Text("\(events.eventsPrice * seatquantity.count)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .semibold))
                                            .frame(maxWidth: .infinity, minHeight: 52)
                                            .background(.black)
                                            .cornerRadius(15)
                                    }
                                    
                                    
                                }
                                
                            }
                            .padding(.horizontal,15)
                            .padding(.bottom,55)
                            
                        }
                        
                    }
                    
                    
                }
                
                
                // MARK: - Custom Alert
                if showAlert {
                    Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 16) {
                        Text("Enter Your Details")
                            .font(.headline)
                        
                        TextField("Name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                            .keyboardType(.emailAddress)
                        
                        TextField("Phone Number", text: $phone)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                            .keyboardType(.phonePad)
                        
                        Button("Submit") {
                            let total = events.eventsPrice * seatquantity.count
                               
                               let booking = BookingEvent(
                                   eventstitle: events.eventstitle,
                                   eventcity: events.eventcity,
                                   totalPrice: total,
                                   name: name,
                                   email: email,
                                   phone: phone,
                                   bookingimage: events.eventsImage
                               )
                               
                               // ✅ Use the singleton to add booking
                               BookingManager.shared.addBooking(booking)
                               
                               showAlert = false
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                        
                        Button("Cancel") {
                            showAlert = false
                        }
                        .foregroundColor(.red)
                        .padding(.bottom, 10)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .frame(maxWidth: 350)
                    .shadow(radius: 20)
                }
                
                
            }
            .edgesIgnoringSafeArea(.all)
            
            
            
        }
        .navigationBarBackButtonHidden(true)
        
        
        

        
    }
}

#Preview {
    EventDetails(events: Events(eventstitle: "Tamil Music Concert", eventsdescription: "The Board of Control for Cricket in India (BCCI) has broadened the role, duties, and responsibilities of the fourth umpire in the IPL matches. During the recent Captains' Meeting at the Cricket Centre, the BCCI clearly emphasized that the fourth umpire should not be disturbed or distracted by teams, as they play a crucial role throughout the match. Additionally, the BCCI has clarified specific instances when a batsman can overrule his captain's call.Among other responsibilities, the fourth umpire - who majorly operates from outside the boundary line - is authorized to randomly check the size of bats, not just on match days but also during practice sessions. Further, the umpire will monitor players retiring to the dugout, with particular attention to bowlers who leave the field after completing their quota of overs.", eventsImage: "nanna_haadu-nannadu", eventdate: "29 March 2025", eventcity: "Bangalore", eventAddress: "Kalasipalya JP Nagar Nagar YD Ground Bangalore", eventsPrice: 9000, eventstime: "9.00 PM"))
}
