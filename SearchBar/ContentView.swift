//
//  ContentView.swift
//  SearchBar
//
//  Created by MSVI on 05.04.21.
//


import SwiftUI

struct ContentView: View {
    @State var filteredItems = apps
    
    var body: some View {

        CustomNavigationView(view: AnyView(Home(filteredItems: $filteredItems)), placeHolder: "Games,Apps,Stories and More", largeTitle: true, title: "Search",
                             
            onSearch: { (txt) in

            // filterting Data...
            if txt != ""{
                self.filteredItems = apps.filter{$0.name.lowercased().contains(txt.lowercased())}
            }
            else{
                
                self.filteredItems = apps
            }
            
        }, onCancel: {
            
            self.filteredItems = apps
            
        })
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Custom Navigation View.....
