//
//  ImageUploaderService.swift
//  drain
//
//  Created by Nopnapat Norasri on 29/1/2567 BE.
//

import Foundation
import Firebase
import FirebaseStorage

struct ImageUploaderService {
    static func uploadImage(_ image: UIImage) async throws -> String? {
        guard let imageData = image.jpegData(compressionQuality: 0.25) else { return nil }
        let filename = NSUUID().uuidString
        let storageRef = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        do {
            let _ = try await storageRef.putDataAsync(imageData)
            let url = try await storageRef.downloadURL()
            return url.absoluteString
        } catch {
            print("DEBUG: Fail tp upload image with error: \(error.localizedDescription)")
            return nil
        }
    }
}
