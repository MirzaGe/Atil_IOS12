//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by sherry on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("HIiii").padding()
            
        Text("Hi, SwiftUI!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.center)
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
