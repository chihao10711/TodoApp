//
//  TodoTaskPage.swift
//  TodoApp
//
//  Created by Lam Chi Hao on 8/23/22.
//

import SwiftUI

struct TodoTaskPage: View {
    
    @ObservedObject var localStorage = LocalStorage()
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            BackgroundView()
            VStack {
                Image("todo_task")
                    .resizable()
                    .frame(width: 111, height: 123)
                HStack {
                    Text("Todo Task")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding()
                VStack {
                    HStack {
                        Text("Dairy  Tasks.")
                            .font(.system(size: 13))
                            .fontWeight(.medium)
                            .foregroundColor(.black.opacity(0.47))
                        Spacer()
                        NavigationLink(destination: {AddTodoPage(localStorage: localStorage)}, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.black)
                        })
                    }.padding()
                    List{
                        ForEach(Array(localStorage.todoValues.enumerated()), id: \.offset) { index, element in
                            Text(element)
                                .onTapGesture {
                                    localStorage.removeOneTodo(index)
                                }
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .cornerRadius(30)
                .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
                .padding()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
    }
}

struct TodoTaskPage_Previews: PreviewProvider {
    static var previews: some View {
        TodoTaskPage()
    }
}
