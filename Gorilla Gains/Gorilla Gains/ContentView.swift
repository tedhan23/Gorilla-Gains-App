//
//  ContentView.swift
//  Gorilla Gains
//
//  Created by Eduard Haney on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Gorilla Gain Tracker")
                    .font(.title)
            }
            LastLog()
            
            Divider()
            
            //LastLog()
        }
        .offset(y:-380)
        .padding(.bottom, -380)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
