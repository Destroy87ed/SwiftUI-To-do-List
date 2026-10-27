//
//  AddView.swift
//  To-do List
//
//  Created by Des on 27/10/26.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            TextField("Input your task", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top, 10)

        }
        .padding(14)
        .navigationTitle("Add a task ✏️")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
