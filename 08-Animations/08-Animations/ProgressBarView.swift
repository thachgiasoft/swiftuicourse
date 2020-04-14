//
//  ProgressBarView.swift
//  08-Animations
//
//  Created by John Alexis Cristobal Jimenez  on 4/14/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct ProgressBarView: View {

    @State private var isLoading = false

    var body: some View {
        
        VStack {
            Text("Cargando...")
                .font(.system(size:30, design: .rounded))
            
            ZStack{
                //ponemos rectangulo atras para que aparezca un efecto interesante
                RoundedRectangle(cornerRadius: CGFloat(35.0), style: .circular)
                    .frame(width: CGFloat(150.0), height: CGFloat(15.0))
                    .foregroundColor(Color(.systemGray6))

                RoundedRectangle(cornerRadius: CGFloat(35.0))
                    .frame(width: CGFloat(15.0), height: CGFloat(15.0))
                    .foregroundColor(Color.green)
                    .offset(x: isLoading ? 70.0 : -75.0, y: 0.0)
                    .animation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.isLoading = true
                    }
            }
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
