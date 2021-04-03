//
//  ThirdView.swift
//  FirstSwiftUIApp
//
//  Created by sherry on 03/04/2021.
//

import SwiftUI

struct ThirdView: View {
    
 /*   let myArray = ["James","Lars","Kirk","Rob"]
    
    var body: some View {
        List (myArray, id: \.self){ element in
            Text(element)
            
        }
    } */
    
    List {
        ForEach(myArray, id: \.self) {
            element in Text(element)
        }
    }
    
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
