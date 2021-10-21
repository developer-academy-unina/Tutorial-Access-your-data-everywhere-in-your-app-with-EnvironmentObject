//
//  OnOffView.swift
//  LightBulbEnvironmentObject
//
//  Created by Stefania Zinno for the Developer Academy on 12/10/21.
//
//

import SwiftUI

struct OnOffView: View {
    @EnvironmentObject var lightBulb: LightBulb
    var body: some View {
        TabView {
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
                        Button("On/Off") {
                            lightBulb.intensity = lightBulb.intensity == 1 ? 0 : 1
                        }
                        NavigationLink(
                            destination:  DimmerView(),
                            label: {
                                Text("Dimmer Light")
                            })
                    }.frame(width: 150)
                        .padding()
                        .foregroundColor(.blue)
                        .overlay(RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.blue, lineWidth: 3))
                }
                .navigationTitle(Text("OnOffView"))
            }   .navigationViewStyle(.stack)
                .tabItem {
                    Label("On/Off", systemImage: "switch.2")
                }
            ColorView()
                .tabItem {
                    Label("Color", systemImage: "eyedropper")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnOffView().environmentObject(LightBulb(color: .yellow, intensity: 1))
    }
}
