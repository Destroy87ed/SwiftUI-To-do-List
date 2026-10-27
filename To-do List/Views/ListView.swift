//
//  ListView.swift
//  To-do List
//
//  Created by Des on 27/10/26.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title.", isCompleted: false),
       ItemModel(title: "This is the second title.", isCompleted: false),
       ItemModel(title: "This is the third title.", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item )
            }
        }
        .padding(.top, 20)
        .listStyle(PlainListStyle())
        .navigationTitle(Text("To-do List 📒"))
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add" ,destination: AddView())
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
