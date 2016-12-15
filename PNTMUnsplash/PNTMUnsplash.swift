//
//  PNTMUnsplash.swift
//  PNTMUnsplash
//
//  Created by Evangelos Sismanidis on 12.12.16.
//  Copyright © 2016 Pintumo. All rights reserved.
//

import Foundation

import Alamofire
import RxSwift



public struct PNTMUnsplash {
    
    static let baseUrl = "https://api.unsplash.com"
    static let clientId = "PLEASE ADD YOUR UNSPLASH API KEY HERE"
    
    public static func photos() -> Observable<PNTMUnsplashPhoto> {
        
        return Observable<[String:Any]>.create() { observer in
            let request = Alamofire.request("\(baseUrl)/photos?client_id=\(clientId)")
                .validate()
                .responseJSON { response in
                        switch response.result {
                        case .success:
                            if let jsonArray = response.result.value as? [[String:Any]] {
                                for json in jsonArray {
                                    observer.on(.next(json))
                                }
                                observer.on(.completed)
                            } else {
                                observer.on(.error(RxError.unknown))
                            }
                            
                        case .failure(let error):
                            observer.on(.error(error))
                        }
            }
            
            return Disposables.create() {
                request.cancel()
            }
        }.map { json in
            guard let id = json["id"] as! String?,
                let urls = json["urls"] as! [String:Any]?,
                let url = urls["regular"] as! String? else {
                throw RxError.unknown
            }
            
            return PNTMUnsplashPhoto(with: id, url: url)
        }
    }
}


