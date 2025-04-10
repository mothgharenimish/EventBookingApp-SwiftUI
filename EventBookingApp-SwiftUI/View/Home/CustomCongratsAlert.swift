//
//  CustomCongratsAlert.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 08/04/25.
//

import SwiftUI

struct CustomCongratsAlert: View {
    
    var okaction : (() ->())

    var body: some View {
        
        
        ZStack {
            
            Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 8) {
                
                Image("icons8-right-144")
                    .resizable()
                    .frame(width: 90,height: 90)
                
                Text("Congratulations")
                    .font(.custom("Arvo-Bold", size: 18))
                    .foregroundColor(.black)
                Text("Your Event is Booked")
                    .font(.custom("Arvo-Bold", size: 16))
                    .foregroundColor(.black)
                
                
                Button{
                    
                    okaction()
                       } label: {
                           Text("OK")
                               .foregroundColor(.white)
                               .font(.system(size: 16, weight: .semibold))
                               .frame(width:290,height: 52)
                               .background(.red)
                               .cornerRadius(15)
                       }
                
                       .padding(.top,20)
                
            }
            .frame(width: 320,height:300)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .shadow(radius: 8.0)
        }
    }
}

#Preview {
    CustomCongratsAlert(okaction: {
        
        print("Tapped on the Ok Button")
    })
}
