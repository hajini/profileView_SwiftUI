//
//  TeamcolorImageView.swift
//  profileViewDesign_swiftUI
//
//  Created by Hajin Jeong on 2023/08/30.
//

import SwiftUI

struct TeamcolorImageView: View {
    
    var imageUrl: String
    
    init(imageUrl: String) {
        self.imageUrl = imageUrl
    }
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image
                .resizable()
                .scaledToFit()
                .padding(4)
                .frame(width: 35, height: 35, alignment: .top)
//                .clipShape(RoundedRectangle(cornerRadius: 8))
//                .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(Color(red: 203/255.0, green: 203/255.0, blue: 203/255.0)))
                .background(.background)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 2)
                }
                .shadow(radius: 5)
        } placeholder: {
            Image("question_gray")
                .resizable()
                .scaledToFit()
                .padding(7)
                .frame(width: 35, height: 35, alignment: .top)
                .background(.background)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 2)
                }
                .shadow(radius: 5)
        }
    }
}

struct TeamcolorImageView_Previews: PreviewProvider {
    static var previews: some View {
        TeamcolorImageView(imageUrl: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/teamcolorboost/icon/medium/4_l1474.png")
    }
}
