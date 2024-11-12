//
//  NumberPad.swift
//  DreamAI
//
//  Created by hong on 11/11/24.
//  Copyright © 2024 Tencent. All rights reserved.
//

import SwiftUI

struct NumberPad : View {
    
    @Binding var codes: String
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 5), count: 3), spacing: 5, content: {
            ForEach(datas) { i in
                Button {
                    if i.value == "delete.left.fill" {
                        if self.codes.count > 0 {
                            self.codes.removeLast()
                        }
                    } else {
                        self.codes.append(i.value)
                    }
                } label: {
                    if i.value == "delete.left.fill" {
                        Image(systemName: i.value).font(.body).padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background {
                                Color.gray.cornerRadius(4)
                            }
                    } else {
                        Text(i.value)
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .background {
                                Color.gray.cornerRadius(4)
                            }
                    }
                }
                .foregroundColor(.white)
//                .aspectRatio(16 / 9, contentMode: .fill)
            }
            
        })
        .frame(maxWidth: 500)
        .padding()
    }
}

struct row : Identifiable {
    var id: Int
    var value: String
}

var datas = [
    row(id: 0, value: "1"),
    row(id: 1, value: "2"),
    row(id: 2, value: "3"),
    row(id: 3, value: "4"),
    row(id: 4, value: "5"),
    row(id: 5, value: "6"),
    row(id: 6, value: "7"),
    row(id: 7, value: "8"),
    row(id: 8, value: "9"),
    row(id: 9, value: "delete.left.fill"),
    row(id: 10, value: "0")
]
