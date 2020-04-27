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
        List(cursos.indices) { idx in
            if idx < 2{
                SubFullView(curso: self.cursos[idx])
            }else{
                SubView(curso: self.cursos[idx])
            }
        }
    }
}

struct SubView: View {
    var curso: Curso
    var body: some View {
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

//una fila con asepcto diferente
struct SubFullView: View {
    
    var curso: Curso
    var body: some View {
        HStack{
            Image(curso.image)
                .resizable()    //para redimensionar
                .aspectRatio(contentMode: .fill)    //para no deformar imagen
                .frame(height: 200) //dejarlo con un alto de 200
                .cornerRadius(15)
                //agrega capa gris para restrle importancia
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.black)
                        .opacity(0.35)
                )
            
            Text("\(curso.name)")
                .font(.system(.headline, design: .rounded))
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
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

struct ListaData_Previews: PreviewProvider {
    static var previews: some View {
        ListaData()
    }
}
