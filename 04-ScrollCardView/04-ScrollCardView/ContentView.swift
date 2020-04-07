//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by John Alexis Cristobal Jimenez  on 4/2/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            VStack(spacing: 4){
                
                Image("magic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(height: 50)
                
                Text("John Cristobal")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                Text("Ingeniero en sistemas computacionales")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Text("ESCOM IPN Burro blanco")
                    .font(.system(.footnote, design: .rounded))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.secondary)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                            
                HStack{
                    CardView(imageName: "magic", autorName: "John Cristobal", title: "Diseño de apps swift ui", originalPrice: "$9,9", newPrice: "$10.0")
                        .frame(width: 300)
                    
                    CardView(imageName: "ray", autorName: "John Cristobal", title: "Diseño de apps android kotlin", originalPrice: "$9,9", newPrice: "$10.0")
                    .frame(width: 300)

                    CardView(imageName: "crunches", autorName: "John Cristobal", title: "Diseño de apps flutter", originalPrice: "$9,9", newPrice: "$10.0")
                    .frame(width: 300)

                        CardView(imageName: "sunmore", autorName: "John Cristobal", title: "Diseño de apps ionic", originalPrice: "$9,9", newPrice: "$10.0")
                    .frame(width: 300)

                }
                
                Spacer()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
