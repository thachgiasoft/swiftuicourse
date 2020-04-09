//
//  ContentView.swift
//  06-StatesBindings
//
//  Created by MACBOOK on 07/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = true
    
    var body: some View {
        
        Button(action: {
            print("play action")
            self.isPlaying.toggle()
        }) {
            //design button
            Image(systemName: isPlaying ? "stop.fill" : "play.fill")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .padding(25)
                .background(isPlaying ? Color.red : Color.blue)
                .clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
