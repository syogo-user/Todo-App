//
//  ContentView.swift
//  Todo App
//
//  Created by 小野寺祥吾 on 2023/10/15.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAddTodoView: Bool = false
    
    var body: some View {
        NavigationView {
            List(0..<5) { item in
                Text("Select an item")
            }
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                self.showingAddTodoView.toggle()
                }) {
                    Image(systemName: "plus")
                })
            .sheet(isPresented: $showingAddTodoView) {
                AddTodoView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewDevice("iPhone 11 Pro")
    }
}
