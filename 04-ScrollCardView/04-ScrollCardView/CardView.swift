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
            VStack(alignment: .leading, spacing: 4){
                Text("Nombre instructor")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("Curso")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                
                Text("$Precio")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
