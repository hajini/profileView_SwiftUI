//
//  ProfileImage.swift
//  profileViewDesign_swiftUI
//
//  Created by Hajin Jeong on 2023/08/29.
//

import SwiftUI
import Kingfisher

struct ProfileImage: View {
    var imageUrl: String
    var changeButton: Bool
    
    init(imageUrl: String, changeButton: Bool) {
        self.imageUrl = imageUrl
        self.changeButton = changeButton
    }
    
    var body: some View {
        ZStack {
            KFImage(URL(string: imageUrl) ?? URL(string: ""))
                  .placeholder { //플레이스 홀더 설정
                      Image("empty")
                  }.retry(maxCount: 3, interval: .seconds(5)) //재시도
                  .onSuccess {r in //성공
                      print("succes: \(r)")
                  }
                  .onFailure { e in //실패
                      print("failure: \(e)")
                  }
                  .resizable()
                  .frame(width: 150, height: 150)
                .background(.white)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
            
            (changeButton) ?
            Image("plus_blue01")
                .resizable()
                .padding(5)
                .frame(width: 45, height: 45)
                .background(.white)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 1)
                }
                .shadow(radius: 7)
                .offset(x: 50, y: 55)
            : nil
            
        }
       
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(imageUrl: "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/playersActionHigh/p287211110.png?rd=202308291050", changeButton: true)
    }
}
