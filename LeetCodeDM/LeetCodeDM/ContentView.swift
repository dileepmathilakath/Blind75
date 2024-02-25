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
            let answer = solution.containsDuplicate([7,1,5,3,6,4])
            Text("Soltion: \(String(answer))")
        }
        .padding()
    }
}

public class Solution {
    public init() {}
}

#Preview {
    ContentView()
}
