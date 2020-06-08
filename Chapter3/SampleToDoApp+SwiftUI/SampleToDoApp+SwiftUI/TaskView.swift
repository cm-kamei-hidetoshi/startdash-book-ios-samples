//
//  TaskView.swift
//  SampleToDoApp+SwiftUI
//
//  Created by tanabe.nobuyuki on 2020/01/15.
//  Copyright © 2020 tanabe.nobuyuki. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    var title: String
    var dateString: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.body)
                .bold()
            Text(dateString)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(title: "タスク名", dateString: "タスク作成時間")
    }
}
