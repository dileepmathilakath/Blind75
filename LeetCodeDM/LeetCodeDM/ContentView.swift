//
//  ContentView.swift
//  LeetCodeDM
//
//  Created by M, Dileep on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    
    var solution = Solution()
    var body: some View {
        VStack {
            let answer = solution.productExceptSelf([1,2,3,4])
            Text("Solution: \(String(answer[0]))")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
