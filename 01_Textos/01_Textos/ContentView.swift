//
//  ContentView.swift
//  01_Textos
//
//  Created by John Alexis Cristobal Jimenez  on 3/24/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
        .fontWeight(.regular) //fuente negrita
        //.font(.largeTitle)   //tamaño fuente
        //.font(.system(.largeTitle, design: .rounded))   //estilo redondeado
        //.font(.system(size: 35, design: .rounded))   //estilo redondeado y con tamaño fijo
            .font(.custom("Gill Sans", size: 25))   //estilo helvetica y 25
        .foregroundColor(.blue) //color de texto o con UIColor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
