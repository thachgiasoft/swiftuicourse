//
//  ContentView.swift
//  10-Lists
//
//  Created by MACBOOK on 25/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //simple lista
        VStack{
            List{
                /*Text("Fila 1")
                Text("Fila 2")
                Text("Fila 3")
                Text("Fila 4")
                Text("Fila 5")*/
                
                //mas facil con foreach
                ForEach(1...5, id: \.self) {
                    Text("Fila ... \($0)")
                }
            }
        
            //lista mas simplicafada sin foreach,
            //se agrega irectamente en lista
            List(1...5, id: \.self) {
                Text("simple ... \($0)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
