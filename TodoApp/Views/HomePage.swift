//
//  HomePage.swift
//  TodoApp
//
//  Created by Lam Chi Hao on 8/23/22.
//

import SwiftUI

struct HomePage: View {
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .topLeading) {
                BackgroundView()
                VStack {
                    Image("image_home")
                        .fixedSize()
                        .frame(width: 345, height: 254)
                        .padding()
                    Text("Get things done with TODo")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                    Text("Lorem ipsum dolor sit amet,\nconsectetur adipisicing. Maxime,\ntempore! Animi nemo aut atque,\ndeleniti nihil dolorem repellendus.")
                        .font(.system(size: 13))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    Spacer()
                    NavigationLink(
                        destination: TodoTaskPage(), label: {
                            Text("Get started")
                                .padding()
                                .frame(width:220, height: 44)
                                .foregroundColor(.white)
                                .background(ColorManager.primaryColor)
                        }
                    )
                    Spacer()
                }
            }
        }
    }
    
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
