//
//  DetailTarea8.swift
//  11-Navigation
//
//  Created by MACBOOK on 09/05/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct DetailTarea8: View {
    
    var universe: Universe
    
    var body: some View {
        VStack(alignment: .leading){
            Image(universe.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 250)
            
            HStack(alignment: .bottom){
                Text(universe.title)
                    .font(.system(size: 40, design: .rounded))
                    .bold()
                    .padding()

                Spacer()

                Text(universe.autorName)
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding()
            }
            
            HStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.orange)
                    .opacity(0.6)
                    .frame(width: 120, height: 30)
                    .overlay(
                        Text(universe.originalDate)
                        .font(.subheadline)
                        .foregroundColor(.white)
                    )
                
               Text(universe.newDate)
                   .font(.caption)
                   .foregroundColor(.secondary)
                   .strikethrough()
            }.padding(15)
            
            Spacer()
        }
    }
}

struct DetailTarea8_Previews: PreviewProvider {
    static var previews: some View {
        DetailTarea8(universe: Universe(imageName: "magic", autorName: "NASA", title: "Vista de la piel del sol", originalDate: "1999-09-09", newDate: "2009-09-11"))
    }
}
