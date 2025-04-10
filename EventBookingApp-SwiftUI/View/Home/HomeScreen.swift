//
//  HomeScreen.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Sharad Mothghare on 20/03/25.
//

import SwiftUI

struct HomeScreen: View {
    @State private var search: String = ""
    @State private var selectedIndex: Int = 0
    @State private var navigateToNextScreen = false

    let events = ["BirthDay","Music Concert","WorkShop","Comedy Show","Circus","Exibhition"]
    
    var selectedEvents: [Events] {
        switch events[selectedIndex] {
        case "BirthDay":
            return birthdayEvents
        case "Music Concert":
            return concertEvents
        case "Comedy Show":
            return ComedyEvents
        case "Circus":
            return CircusEvents
        case "WorkShop":
            return WorkShoopEvents
        default:
            return []
        }
    }
    
    
    var filteredEvents: [Events] {
        if search.isEmpty {
            return selectedEvents
        } else {
            return selectedEvents.filter {
                $0.eventstitle.lowercased().contains(search.lowercased()) ||
                $0.eventcity.lowercased().contains(search.lowercased())
            }
        }
    }
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(hex: "#d7ebec").ignoresSafeArea(.all)
                
                VStack(alignment: .leading) {
                    NavigationLink(destination: BookingDetails(), isActive: $navigateToNextScreen) {
        //                               EmptyView()
                                   }
                    
                    AppBarView(detailsaction: {
                        navigateToNextScreen = true

                    }, menuaction: {
                        
                        
                    })
                    
                    TaglineView()
                        .padding(.top,20)
                        .padding(.horizontal,13)
                    
                    SearchBar(search: $search)
                        .padding(.top,10)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< events.count) { i in
                                Button(action: {selectedIndex = i}) {
                                    EventsCategory(isActive: selectedIndex == i, text: events[i])
                                }
                            }
                        }
                        .padding()
                    }
                    
                    Text("Events")
                        .font(.custom("Arvo-Bold", size: 27))
                        .foregroundStyle(Color(hex: "#641e04"))
                    
                        .padding(.horizontal)
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            if filteredEvents.isEmpty {
                                Text("No events found.")
                                    .foregroundColor(.black)
                                    .padding()
                            } else {
                                ForEach(filteredEvents) { event in
                                    
                                    NavigationLink(destination: EventDetails(events: event)) {
                                        EventsCard(events: event)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    
                    Spacer()
                }
                
            }
        
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomeScreen()
}



