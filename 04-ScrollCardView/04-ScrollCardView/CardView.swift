//
//  CardView.swift
//  04-ScrollCardView
//
//  Created by John Alexis Cristobal Jimenez  on 4/2/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        //vstack para poner pila con imagen
        VStack{
            Image("magic")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            //vstack alineado a la izquierda
            //uso de colores primarios y secundarios 
            VStack(alignment: .leading){
                Text("Nombre instructor")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("Curso de diseño de apps para ios con swift ui".uppercased())
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                
                //ponemos dos colores para destacar el mas nuevo
                HStack{
                    Text("$Precio")
                        .font(.subheadline)
                        .foregroundColor(.primary)

                    Text("$Precio antiguo")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .strikethrough()                        
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
