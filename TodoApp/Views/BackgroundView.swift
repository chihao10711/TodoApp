//
//  BackgroundView.swift
//  TodoApp
//
//  Created by Lam Chi Hao on 8/24/22.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            ColorManager.backgroundColor.edgesIgnoringSafeArea(.all)
            Circle()
                .fill(ColorManager.primaryColor.opacity(0.5))
                .frame(width: 150, height: 150)
                .offset(x:-50,y: -20)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(ColorManager.primaryColor.opacity(0.5))
                .frame(width: 150, height: 150)
                .offset(x:-5,y: -50)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
