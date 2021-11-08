//
//  Home.swift
//  SearchBar
//
//  Created by MSVI on 05.04.21.
//

import SwiftUI

struct Home: View {
    // for search Bar...
    @Binding var filteredItems : [AppItem]
    
    var body: some View {
        
        // Apps List View...
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 15){
                
                // Apps List...
                ForEach(filteredItems){item in
                    
                    // Card View....
                    
                    CardView(item: item)
                }
            }
            .padding()
        }
    }
}

