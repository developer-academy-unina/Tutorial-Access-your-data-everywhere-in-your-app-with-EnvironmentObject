//
//  ColorView.swift
//  LightBulbEnvironmentObject
//
//  Created by Stefania Zinno for the Developer Academy on 12/10/21.
//
//

import SwiftUI

struct ColorView: View {
    @EnvironmentObject var lightBulb: LightBulb
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                HStack{
                    lightBulb.light
                        .foregroundColor(lightBulb.color)
                        .font(.system(size: 60))
                        .opacity(lightBulb.intensity)
                        .padding()
                }
                Group{
                    Button("Change Color") {
                        lightBulb.color = lightBulb.color == .yellow ? .red : .yellow
                    }
                }.frame(width: 150)
                    .padding()
                    .foregroundColor(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.blue, lineWidth: 3))
            }
            .navigationTitle(Text("ColorView"))
        }.navigationViewStyle(.stack)
    }
    
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        DimmerView().environmentObject(LightBulb(color: .yellow, intensity: 1))
    }
}

