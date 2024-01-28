//
//  CreateDrainView.swift
//  drain
//
//  Created by Nopnapat Norasri on 28/1/2567 BE.
//

import SwiftUI

struct CreateDrainView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    AppProfileImage()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("neuw")
                            .fontWeight(.semibold)
                        
                        TextField("Start a drain..", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Drain")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                       dismiss()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    CreateDrainView()
}
