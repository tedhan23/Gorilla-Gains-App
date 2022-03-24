//
//  LastLog.swift
//  Gorilla Gains
//
//  Created by Eduard Haney on 3/10/22.
//

import SwiftUI
//import Gorilla_GainsApp

struct LastLog: View {
    @State var lift = ""
    @State var sets = ""
    @State var reps = ""
    @State var notes = ""
    
    let date = NSDate()
    
    
    @State var log: [(l: String, s: String, r: String, n: String)] = []
    
    var body: some View {
        VStack {
            /*Button(action:logs.append(log))
            {
                Text("Save Log")
            }*/
            
            Text("\(date)")
        
            Divider()
        
            HStack{
                TextField("Exercise", text: $lift)
                TextField("Sets", text: $sets)
                TextField("Reps", text: $reps)
                
            }
            .padding(20.0)
            
            Divider()
                .padding(.vertical)
            
            TextField("Notes: ", text: $notes)
                .padding([.top, .leading, .bottom])
            
            Divider()
                .padding(.vertical)
            
            HStack{
                if #available(iOS 15.0, *) {
                    Button(action: {
                        log.append((lift, sets, reps, notes))
                    }) {
                        Text("Add")
                    }
                    .buttonStyle(.bordered)
                } else {
                    // Fallback on earlier versions
                }
            }
            
            HStack{
                if log.endIndex > 0
                {
                    Text("\(log[log.endIndex-1].l): \(log[log.endIndex-1].s) x \(log[log.endIndex-1].r)")
                }
            }
            
            HStack{
                if log.endIndex > 1
                {
                    Text("\(log[log.endIndex-2].l): \(log[log.endIndex-2].s) x \(log[log.endIndex-2].r)")
                }
            }
            .opacity(0.75)
            
            HStack{
                if log.endIndex > 2
                {
                    Text("\(log[log.endIndex-3].l): \(log[log.endIndex-3].s) x \(log[log.endIndex-3].r)")
                }
            }
            .opacity(0.5)
            
            HStack{
                if log.endIndex > 3
                {
                    Text("\(log[log.endIndex-4].l): \(log[log.endIndex-4].s) x \(log[log.endIndex-4].r)")
                }
            }
            .opacity(0.25)
        }
        .offset(y:-300)
        .padding(.bottom, -300)
    }
}

struct LastLog_Previews: PreviewProvider {
    static var previews: some View {
        LastLog()
    }
}
