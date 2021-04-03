//
//  DetailsView.swift
//  FavouriteBook
//
//  Created by sherry on 03/04/2021.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
            .padding()
            
            Text(chosenFavoriteElement.description)
            
        }
    }
}

#if DEBUG
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: thedarkknight)
    }
}
#endif
