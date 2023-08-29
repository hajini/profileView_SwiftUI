//
//  ContentView.swift
//  practice01
//
//  Created by Hajin Jeong on 2023/08/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var img = "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/playersActionHigh/p287231677.png?rd=202308291050"
    var image02 = "https://fo4.dn.nexoncdn.co.kr/live/externalAssets/common/playersActionHigh/p287231677.png?rd=202308291050"
    
    
    var body: some View {
        NavigationStack {
            VStack {
                LinearGradient(
                    gradient: Gradient(colors: [.white, .yellow]),
                    startPoint: .topLeading, endPoint: .bottomTrailing
                )
                .frame(height: 200)
                Button {
                    print("tap the pic")
                    if img == "" {
                        img = image02
                    } else {
                        img = ""
                        //
                    }
                } label: {
                    ProfileImage(imageUrl: img, changeButton: true)
                }
                .offset(y: -130)
                .padding(.bottom, -130)
            
                List {
                    Section() {
                        VStack(alignment: .leading) {
                            Text("뮌헨한국지부")
                                .font(.title)
                                .bold()
                            
                            Spacer()
                            HStack {
                                Text("스쿼드매니아 닉네임")
                            }
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        }
                        .frame(height: 45)
                        .padding(10)
                        HStack {
                            VStack(alignment: .leading) {
                                
                                Text("CF조규성")
                                    .font(.title)
                                    .bold()
                                Spacer()
                                Text("Lv.2924")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text("FC온라인 구단주 정보")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            Button(action: {
                                // tap
                                
                            }) {
                                Text("변경")
                                    .frame(width: 35, height: 10)
                                    .bold()
                                    .font(.title3)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.init(red: 97/255, green: 177/255, blue: 90/255))
                                    .cornerRadius(10)
                            }
                        }
                        .frame(height: 80)
                        .padding(10)
                        
                        HStack {
                            Text("최고시즌")
                                .font(.title2)
                            Spacer()
                            Image("ico_rank1")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        .padding(10)
                        HStack {
                            Text("현재시즌")
                                .font(.title2)
                            Spacer()
                            Image("ico_rank5")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        .padding(10)
                        VStack(alignment: .leading){
                            HStack {
                                Text("구단가치")
                                    .font(.title2)
                                Spacer()
                                Text("1조 5600억 BP")
                                    .font(.title3)
                                    .foregroundColor(.orange)
                            }
                            Spacer()
                            Text("10분전 갱신됨")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        .frame(height: 50)
                        .padding(10)
                    }
                    
                    Section() {
                        Text("소개글을 등록해 주세요.")
                            .frame(minHeight: 80)
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                    
                    Section() {
                        Button(action: {
                            // tab the button
                        }) {
                            Text("구단가치 갱신하기")
                                .bold()
                                .font(.title2)
                                .padding()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.init(red: 97/255, green: 177/255, blue: 90/255))
                    }
                    .listRowInsets(EdgeInsets())
                    
                    
                }
                .background(Color.init(red: 246/255.0, green: 244/255.0, blue: 230/255.0))
                .scrollContentBackground(.hidden)
                
                
                Color.gray
                    .frame(height: 100)
            }
            .background(Color.init(red: 246/255.0, green: 244/255.0, blue: 230/255.0))
            .navigationTitle("프로필")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        print("뒤로가기버튼")
                        //뒤로가기
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        print("옵션버튼")
                        //로그아웃, 회원탈퇴, 색상변경
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
