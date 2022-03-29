//
//  RectangleDividerView.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/28/22.
//

import SwiftUI

struct RectangleDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 0.5)
            .foregroundColor(.lightBackground)
    }
}

struct RectangleDividerView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDividerView()
    }
}
