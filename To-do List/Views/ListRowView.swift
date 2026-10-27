//
//  ListRowView.swift
//  To-do List
//
//  Created by Des on 27/10/26.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.top, 8)
    }
}

#Preview {
    
    var item1 = ItemModel(title: "Buy Milk", isCompleted: false)
    var item2 = ItemModel(title: "Buy Eggs", isCompleted: true)
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
