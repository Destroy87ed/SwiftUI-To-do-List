//
//  ItemModel.swift
//  To-do List
//
//  Created by Des on 27/10/26.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
