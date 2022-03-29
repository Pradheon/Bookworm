//
//  CardView.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/28/22.
//

import SwiftUI

struct CardView: View {
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                Image(book.genre ?? "Fantasy")
                    .resizable()
                    .scaledToFill()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5)
                    )
                    .frame(maxWidth: 70, maxHeight: 100)
                    .clipped()
                
                VStack(alignment: .leading) {
                    Text(book.title ?? "Unknown Title")
                        .font(.headline)
                        .foregroundColor(book.rating == 1 ? Color.red : Color.primary)
                    Text(book.author ?? "Unknown Author")
                        //.foregroundColor(.secondary)
                        .foregroundColor(book.rating == 1 ? Color.red.opacity(0.5) : Color.secondary)
                    
                    Spacer()
                    
                    EmojiRatingView(rating: book.rating)
                        .font(.largeTitle)
                        .accessibilityLabel("\(Int(book.rating)) star rating")
                }
            }
        }
        .padding()
    }
}
