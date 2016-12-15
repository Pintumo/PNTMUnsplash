//
//  PNTMUnsplashPhoto.swift
//  PNTMUnsplash
//
//  Created by Evangelos Sismanidis on 15.12.16.
//  Copyright © 2016 Pintumo. All rights reserved.
//

import Foundation

public struct PNTMUnsplashPhoto {
    public let url: String
    public let id: String
    
    init(with id: String, url: String) {
        self.url = url
        self.id = id
    }
}
