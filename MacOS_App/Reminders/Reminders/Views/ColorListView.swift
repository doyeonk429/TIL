//
//  ColorListView.swift
//  Reminders
//
//  Created by 김도연 on 3/22/26.
//

import SwiftUI

struct ColorListView: View {
    
    let colors = [
        Color.red,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple,
        Color.brown,
        Color.black
    ]

    @Binding var selectedColor: Color
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(colors, id: \.self) { color in
                    Image(systemName: selectedColor == color ?
                          Constants.Icons.recordCircleFill : Constants.Icons.circleFill
                    )
                    .foregroundStyle(color)
                    .font(.system(size: 16))
                    .clipShape(.circle)
                    .onTapGesture {
                        selectedColor = color
                    }
                }
            }
        }
    }
}

#Preview {
    ColorListView(selectedColor: .constant(.red))
}
