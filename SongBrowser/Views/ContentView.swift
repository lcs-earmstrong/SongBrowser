//
//  ContentView.swift
//  SongBrowser
//
//  Created by Evan Armstrong on 2021-02-20.
//

import SwiftUI

struct ContentView: View {
    
    //Mark: Stored properties
    
    // Keeps track of what the user searches for
    @State private var searchText = ""
    var body: some View {
        
        VStack{
            SearchBarView(text: $searchText)
            
            // Show a propt when no search text is given
            if searchText.isEmpty{
                
                Spacer()
                
                Text("Please enter an artist name")
                    .font(.title)
                    .foregroundColor(.secondary)
                
                
                Spacer()
                
            }else{
                // Push the search bar to the top
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
