//
//  EmojiRatingView.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/28/22.
//

import SwiftUI

struct EmojiRatingView: View {
    let rating: Int16
    
    var body: some View {
        switch rating {
        case 1:
            Text("đ ")
                .accessibilityLabel("Rating of 1")
        case 2:
            Text("âšī¸")
                .accessibilityLabel("Rating of 2")
        case 3:
            Text("đ")
                .accessibilityLabel("Rating of 3")
        case 4:
            Text("đ")
                .accessibilityLabel("Rating of 4")
        default:
            Text("đ")
                .accessibilityLabel("Rating of 5")
        }
    }
}

struct EmojiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiRatingView(rating: 3)
    }
}
