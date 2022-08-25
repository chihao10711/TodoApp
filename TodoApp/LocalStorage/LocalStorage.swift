//
//  LocalStorage.swift
//  TodoApp
//
//  Created by Lam Chi Hao on 8/23/22.
//

import Foundation


class LocalStorage : ObservableObject{
    
    @Published var todoValues: [String] = [String]()
    
    
    init(){
        todoValues = userDefaults.object(forKey: todoKey) as? [String] ?? []
    }
    
    let userDefaults = UserDefaults.standard
    
    let todoKey: String = "todoKey"
    
    func addNewTodo(_ value: String){
        var _todoValue = userDefaults.object(forKey: "todoKey") as? [String] ?? []
        _todoValue.insert(value, at: 0)
        userDefaults.set(_todoValue, forKey: todoKey)
        self.todoValues = _todoValue
    }
    
    func removeOneTodo(_ index: Int){
        var _todoValue = userDefaults.object(forKey: "todoKey") as? [String] ?? []
        _todoValue.remove(at: index);
        userDefaults.set(_todoValue, forKey: todoKey)
        self.todoValues = _todoValue
    }
}
