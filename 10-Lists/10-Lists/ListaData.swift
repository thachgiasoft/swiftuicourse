//
//  ListaData.swift
//  10-Lists
//
//  Created by MACBOOK on 25/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ListaData: View {
    
    var cursos = [
        Curso(name: "Curso 1", image: "crunches"),
        Curso(name: "Curso 2", image: "magic"),
        Curso(name: "Curso 3", image: "ray"),
        Curso(name: "Curso 4", image: "sunmore"),
        Curso(name: "Curso 2", image: "ray")
    ]

    var body: some View {
        //ojo con el id, debe ser unico
        //en este caso usamos el nombre temporalment
        
        //pero si usamos protocolo identificable, ahorramos una linea 
        List(cursos) { curso in
            HStack{
                Image(curso.image)
                //con resizable se ajusta la imagen al tamaño del frame
                .resizable()
                //modo de presentar imagen
                .aspectRatio(contentMode: .fill)
                //frame para tamaño
                .frame(width: 60, height: 60)
                .clipped()
                //redondeamos para circulo
                .cornerRadius(30)
            
                Text("\(curso.name)")
            }
        }
    }
}

struct ListaData_Previews: PreviewProvider {
    static var previews: some View {
        ListaData()
    }
}

//con esto ahorramos codigoi
//protocolo identificable
//con esto te cargas el .\id en la lista
struct Curso : Identifiable {
    var id = UUID()
    //ESTE IDENTIFICADOR unico universal
    //numero de 128 bits
    var name: String
    var image: String
}
