//
//  SplashScreen.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Sharad Mothghare on 20/03/25.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isNavigation : Bool = false
    @State private var animatedString : Bool = false
    var body: some View {
        
        NavigationView {
            ZStack {
                
                Image("concert-4690284_1280")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                
                VStack(alignment: .leading) {
                    
                    if animatedString {
                        Text("Event Booking App")
                            .font(.custom("Arvo-Bold", size: 50))
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.top, 90)
                            .transition(.opacity.combined(with: .scale))
                    }
                    
                    
                    Spacer() // Pushes content to the top
                    
                    Button(action: {
                        isNavigation = true
                        print("Button tapped!")
                    }) {
                        Text("Explore the Events")
                            .font(.custom("Arvo-Bold", size: 18))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(hex: "#d60451"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal, 20)
                            .background(
                                NavigationLink("", destination: HomeScreen(), isActive: $isNavigation)
                                    .hidden()
                            )
                    }
                    .padding(.bottom, 89)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray.opacity(0.1))
                .ignoresSafeArea(edges: .bottom)
                
                Spacer()
                
                    .onAppear() {
                        
                        withAnimation(.easeInOut(duration: 3.0)) {
                            animatedString = true
                        }
                    }
            }
        }
    }
}


#Preview {
    SplashScreen()
}
