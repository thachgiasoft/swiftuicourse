//
//  Tarea4.swift
//  06-StatesBindings
//
//  Created by MACBOOK on 09/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct Tarea4: View {
    
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0
    @State private var suma = 0

    var body: some View {
        
        VStack{
            Text("\(suma)")
                .font(.system(size: 60, design: .rounded))
                .fontWeight(.bold)
            CounterViewTarea(counter: $counter1, suma: $suma, buttonColor: Color.red)
            CounterViewTarea(counter: $counter2, suma: $suma, buttonColor: Color.yellow)
            CounterViewTarea(counter: $counter3, suma: $suma, buttonColor: Color.green)
        }
    }
}

struct Tarea4_Previews: PreviewProvider {
    static var previews: some View {
        Tarea4()
    }
}

struct CounterViewTarea: View {
    @Binding var counter: Int
    @Binding var suma: Int
    var buttonColor : Color
    
    var body: some View {
        Button(action: {

            print("play action \(self.counter)")
            self.counter = self.counter + 1
            self.suma = self.suma + 1
            
        }) {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(
                    Text("\(counter)")
                        .foregroundColor(.white)
                        .font(.system(size: 60, weight: .bold))
            )
        }
    }
}
