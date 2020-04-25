//
//  T6E2.swift
//  09-Transitions
//
//  Created by MACBOOK on 24/04/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct T6E2: View {
    
    @State private var showCard = true
    @State private var indexCard = 0
    @State private var offsetStart = 600

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
            
            //ScrollView(.horizontal, showsIndicators: false){
                            
                HStack{
                    //if showCard{
                    CardView(imageName: "ray", autorName: "John Cristobal", title: "Diseño de apps android kotlin", originalPrice: "$9,9", newPrice: "$10.0")
                        .frame(width: 400)
                        .animation(.default)
                        //.transition(AnyTransition.offset(x: CGFloat(offsetStart * 1), y: 0))
                    //}
                    
                    CardView(imageName: "magic", autorName: "John Cristobal", title: "Diseño de apps swift ui", originalPrice: "$9,9", newPrice: "$10.0")
                        .frame(width: 400)
                        .animation(.default)

                        //.transition(AnyTransition.offset(x: CGFloat(offsetStart * 2), y: 0))

                    CardView(imageName: "crunches", autorName: "John Cristobal", title: "Diseño de apps flutter", originalPrice: "$9,9", newPrice: "$10.0")
                        .frame(width: 400)
                    
                    CardView(imageName: "sunmore", autorName: "John Cristobal", title: "Diseño de apps ionic", originalPrice: "$9,9", newPrice: "$10.0")
                        .frame(width: 400)
                    
                }
                .offset(x: CGFloat(self.offsetStart), y: 0)
                .onTapGesture {
                    withAnimation(Animation.default){
                        self.offsetStart += -400
                        if self.offsetStart < -600 {
                            self.offsetStart = 600
                        }
                        self.showCard.toggle()
                    }
                }
            //}
        }
    }
}

struct T6E2_Previews: PreviewProvider {
    static var previews: some View {
        T6E2()
    }
}
