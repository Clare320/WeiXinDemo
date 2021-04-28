//
//  MineSectionFooter.swift
//  WeiXinDemo
//
//  Created by lingjie.li on 2021/4/28.
//

import SwiftUI

struct MineSectionFooter: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.red) // Color("pageBackgroundColor")
            .frame(height: 10)
    }
}

struct MineSectionFooter_Previews: PreviewProvider {
    static var previews: some View {
        MineSectionFooter()
            .previewLayout(.sizeThatFits)
    }
}
