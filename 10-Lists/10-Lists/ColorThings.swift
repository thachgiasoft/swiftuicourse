//
//  ColorThings.swift
//  10-Lists
//
//  Created by John Alexis Cristobal Jimenez  on 4/27/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ColorThings: View {
    
    var colorThings = [
        Thing(name: "Mango", image: "mango", type: .yellow),
        Thing(name: "Sol",  image: "sol", type: .yellow),
        Thing(name: "Manzana",  image: "manzana", type: .red),
        Thing(name: "Refresco",  image: "refresco", type: .red),
        Thing(name: "Noche",  image: "noche", type: .blue),
        Thing(name: "Cascada",  image: "cascada", type: .blue),
        Thing(name: "Árbol",  image: "arbol", type: .green),
        Thing(name: "Dinosaurio",  image: "dinosaurio", type: .green)
    ]
    
    var body: some View {

        VStack{
            Text("Color-Things...")
                .font(.system(.title))
                .bold()
                .padding()
            List(colorThings){ thing in
                CellThing(thing: thing)
            }
        }
    }
}

struct CellThing : View {

    var thing: Thing

    var body : some View {
        HStack{
            Image(thing.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text(thing.name)
                .font(.system(.headline,design: .rounded))
                .bold()
                .foregroundColor(.black)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(thing.type)
                    .cornerRadius(25)
                    .opacity(0.75)
            )
    }
}

struct Thing : Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let type: Color
}

struct ColorThings_Previews: PreviewProvider {
    static var previews: some View {
        ColorThings()
    }
}
