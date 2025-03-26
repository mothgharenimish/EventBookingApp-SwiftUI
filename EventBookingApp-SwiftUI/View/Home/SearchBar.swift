//
//  SearchBar.swift
//  EventBookingApp-SwiftUI
//
//  Created by Nimish Mothghare on 21/03/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var search: String

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.gray)
                    .padding(.trailing, 8)
                TextField("Search Planets", text: $search)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.trailing, 8)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchBar(search: .constant(""))
}
