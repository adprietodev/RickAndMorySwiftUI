//
//  FilterCellView.swift
//  RickAndMortyApp
//
//  Created by Adrian Prieto Villena on 27/6/24.
//

import SwiftUI

struct FilterCellView: View {
    let key: String
    let param: Any
    let delegate: FilterCellDellegate?
    
    var body: some View {
        HStack {
            Text("\(param)")
                
            Button {
                delegate?.removeFilter(with: key)
            } label: {
                Image(systemName: "xmark.circle")
                    .foregroundStyle(.primaryGreen)
                    .padding(.leading,6)
            }
            .buttonStyle(PlainButtonStyle())
        }
        .padding(.vertical, 6)
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.primaryGreen, lineWidth: 2)
        )
        .background(
            RoundedRectangle(cornerRadius:16)
                .fill(Color.primaryBlack)
        )
        .cornerRadius(16)
        .preferredColorScheme(.dark)
    }
}
