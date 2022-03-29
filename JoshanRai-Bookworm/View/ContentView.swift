//
//  ContentViewC.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/27/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.title),
        SortDescriptor(\.author)
    ]) var books: FetchedResults<Book>
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @State private var showingAddScreen = false
    @State private var showingSettingsScreen = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(books) { book in
                    NavigationLink(destination: DetailView(book: book)) {
                        CardView(book: book)
                    }
                    /*
                    NavigationLink {
                        DetailView(book: book)
                    } label: {
                        HStack {
                            EmojiRatingView(rating: book.rating)
                                .font(.largeTitle)
                            
                            VStack(alignment: .leading) {
                                Text(book.title ?? "Unknown Title")
                                    .font(.headline)
                                    .foregroundColor(book.rating == 1 ? Color.red : Color.primary)
                                Text(book.author ?? "Unknown Author")
                                    //.foregroundColor(.secondary)
                                    .foregroundColor(book.rating == 1 ? Color.red.opacity(0.5) : Color.secondary)
                            }
                        }
                    }
                    */
                }
                .onDelete(perform: deleteBooks)
            }
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add Book", systemImage: "plus")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingSettingsScreen.toggle()
                        } label: {
                            Label("Settings", systemImage: "gearshape")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                }
                .sheet(isPresented: $showingAddScreen) {
                    AddBookView()
                }
                .sheet(isPresented: $showingSettingsScreen) {
                    SettingsView()
                }
        }
        .tint(isDarkMode ? .accentYellowLight : .accentYellowDark)
    }
    
    func deleteBooks(at offsets: IndexSet) {
        for offset in offsets {
            /// Find this book in our fetch request
            let book = books[offset]
            
            /// Delete the book from the context
            moc.delete(book)
        }
        
        /// Save the context
        try? moc.save()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
