//
//  ContentView.swift
//  SampleToDoApp+SwiftUI
//
//  Created by tanabe.nobuyuki on 2020/01/15.
//  Copyright © 2020 tanabe.nobuyuki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var models: [ToDoItem] = []
    @State var newItemTitle = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("タスク作成")) {
                    HStack {
                        TextField("タスク名", text: self.$newItemTitle)
                        Button(action: {
                            self.addItem()
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }
                
                Section(header: Text("タスク一覧")) {
                    ForEach(self.models) { todoItem in
                        return TaskView(title: todoItem.title, dateString: todoItem.dateString)
                    }.onDelete { indexSet in
                        let index = indexSet.first!
                        self.models.remove(at: index)
                    }
                }
            }.navigationBarTitle(Text("ToDoList"))
        }
    }
    
    func addItem() {
        let newItem = ToDoItem(title: self.newItemTitle, createdAt: Date())
        self.models.append(newItem)
        self.newItemTitle = ""
    }
    
    func removeItem(_ indexSet: IndexSet) {
        let index = indexSet.first!
        self.models.remove(at: index)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





