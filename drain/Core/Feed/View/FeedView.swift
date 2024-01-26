//
//  FeedView.swift
//  drain
//
//  Created by Nopnapat Norasri on 26/1/2567 BE.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) {
                        cell in AppDrainCell()
                        Divider()
                    }
                }
                
            }
            .refreshable {
                print("DEBUG: Refresh Cell")
            }
            .navigationTitle("Drain")
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(
                            size: 52,
                            weight: .light,
                            design: .rounded))
                        .symbolVariant(.circle.fill)
                        .foregroundColor(.black)
                        .padding()
                }
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
