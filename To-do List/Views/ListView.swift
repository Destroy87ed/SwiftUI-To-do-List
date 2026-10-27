//
//  ListView.swift
//  To-do List
//
//  Created by Des on 27/10/26.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title",
        "This is the second title",
        "This is the third title"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle(Text("To-do List 📒"))
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add" ,destination: Text("Destination"))
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
