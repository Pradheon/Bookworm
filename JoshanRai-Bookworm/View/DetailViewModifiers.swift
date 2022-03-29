//
//  DetailViewModifiers.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/28/22.
//

import SwiftUI

struct DetailsInformationView: View {
    let book: Book
    
    var body: some View {
        Text("Information")
            .font(.title2)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        
        VStack {
            HStack(spacing: 20) {
                Text("Author")
                    .foregroundColor(.steel)
                    .fontWeight(.bold)
                Text(book.author ?? "Unknown Author")
                    .foregroundColor(.aluminum)
            }
            HStack(spacing: 20) {
                Text("Genre")
                    .foregroundColor(.steel)
                    .fontWeight(.bold)
                Text(book.genre ?? "Unknown Genre")
                    .foregroundColor(.aluminum)
            }
        }
    }
}


struct DetailsRatingView: View {
    let book: Book
    
    var body: some View {
        Text("Rating")
            .font(.title2)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        
        VStack {
            HStack(spacing: 20) {
                Text("Average: ")
                    .foregroundColor(.steel)
                    .fontWeight(.bold)
                RatingView(rating: .constant(Int(book.rating)))
                    .font(.title3)
            }
        }
    }
}

struct DetailsReviewView: View {
    let book: Book
    
    var body: some View {
        Text("Review")
            .font(.title2)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        
        VStack {
            HStack(spacing: 20) {
                Text("Review: ")
                    .foregroundColor(.steel)
                    .fontWeight(.bold)
                Text(book.review ?? "No Review")
                    .foregroundColor(.aluminum)
            }
        }
    }
}

struct DetailsCompletedView: View {
    let book: Book
    
    var dateFormat: String {
        guard let date = book.date else {
            return "Unknown Date"
        }
        let format = DateFormatter()
        format.dateStyle = .long
        return "\(format.string(from: date))"
    }
    
    var body: some View {
        Text("Completed")
            .font(.title2)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
        
        VStack {
            HStack(spacing: 20) {
                Text("Completed On: ")
                    .foregroundColor(.steel)
                    .fontWeight(.bold)
                Text(dateFormat)
                    .foregroundColor(.aluminum)
            }
        }
    }
}
