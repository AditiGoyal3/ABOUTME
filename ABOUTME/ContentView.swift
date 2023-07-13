//
//  ContentView.swift
//  ABOUTME
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingFacts = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("yourImageName") // me
                    .resizable()
                    .frame(width: 320, height: 250)
                
                Button(action: {
                    showingFacts = true
                }) {
                    Text("Facts About Me")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                .sheet(isPresented: $showingFacts) {
                    FactsView()
                }
                
                // Add any other content or buttons you want
                Image("11") // me
                    .resizable()
                    .frame(width: 350, height: 300)
                Spacer()
            }
            .navigationTitle("About Me: 3 FACTS")
        }
    }
}

struct FactsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Here are 3 facts about me:")
                .font(.title)
                .padding()
            
            // Add the facts
            Text("I LOVE pickles")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.green)
            Text("I have NEVER broken a bone")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
            
            Text("I ❤️❤️❤️ READING📚")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
   
            // ...
            
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Close")
                    .font(.headline)
                    .padding()
                    .background(Color(hue: 0.784, saturation: 0.347, brightness: 0.959))
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Facts")
    }
}
               
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//hh
