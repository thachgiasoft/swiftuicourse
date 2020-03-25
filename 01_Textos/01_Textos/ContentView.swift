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
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
        .fontWeight(.regular) //fuente negrita
        //.font(.largeTitle)   //tamaño fuente
        //.font(.system(.largeTitle, design: .rounded))   //estilo redondeado
        //.font(.system(size: 35, design: .rounded))   //estilo redondeado y con tamaño fijo
        .font(.custom("Gill Sans", size: 25))   //estilo helvetica y 25
        .foregroundColor(.blue) //color de texto o con UIColor
        .multilineTextAlignment(.center)    //alinear text
        .lineLimit(3)   //solo 3 lineas
        .truncationMode(.head)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
