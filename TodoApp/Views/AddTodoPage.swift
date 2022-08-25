//
//  AddTodoPage.swift
//  TodoApp
//
//  Created by Lam Chi Hao on 8/23/22.
//

import SwiftUI

struct AddTodoPage: View {
    
    var localStorage :LocalStorage
    
    @State private var todoValue: String = ""
    @State private var showAlert: Bool = false
    @FocusState private var focusedField: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BackgroundView()
            VStack(alignment: .center) {
                Text("Welcome Onboard!")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .padding()
                Image("add_todo")
                    .fixedSize()
                    .frame(width: 243, height: 172, alignment: .center)
                    .padding()
                Text("Add What your want to do later on..")
                    .font(.system(size: 13))
                    .fontWeight(.medium)
                    .foregroundColor(ColorManager.primaryColor)
                    .padding()
                TextField(
                    "Ex: Doing homework",
                    text: $todoValue
                )
                .focused($focusedField)
                .padding()
                .textInputAutocapitalization(.never)
                .background()
                .cornerRadius(11)
                .padding()
                .onSubmit{
                    onSubmit()
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                        self.focusedField  = true
                    }
                }
                Spacer()
                Button(action: {
                    onSubmit()
                }, label: {
                    Text("Add to list")
                        .frame(width: 220, height: 44)
                        .foregroundColor(.white)
                        .background(ColorManager.primaryColor)
                    
                })
                Spacer()
            }
            .frame(maxWidth: .infinity)
            
        }
        
        .alert("To do work doesn't empty !", isPresented: $showAlert, actions: {})
    }
    
    func onSubmit(){
        if todoValue.isEmpty {
            showAlert = true;
        }
        else {
            localStorage.addNewTodo(todoValue)
            self.presentationMode.wrappedValue.dismiss()
        }
        
    }
}

struct AddTodoPage_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoPage(localStorage :LocalStorage())
    }
}
