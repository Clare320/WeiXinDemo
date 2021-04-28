//
//  MineListCell.swift
//  WeiXinDemo
//
//  Created by lingjie.li on 2021/4/28.
//

import SwiftUI

struct MineListCell: View {
    let icon: String
    let title: String
    let action: (() -> Void)?
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(title)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
//        .background(Color.blue)
    }
}

struct MineListCell_Previews: PreviewProvider {
    static var previews: some View {
        MineListCell(icon: "cross.case", title: "医疗", action: nil)
            .previewLayout(.sizeThatFits)
    }
}
