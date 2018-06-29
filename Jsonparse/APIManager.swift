//
//  APIManager.swift
//  Jsonparse
//
//  Created by vikas srivastava on 29/06/18.
//  Copyright © 2018 vikas srivastava. All rights reserved.
//

import Foundation
class APIManger {
    final let url = URL(string: "http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors")
    static let shared = APIManger ()

   private init() {
    
    }
    
    func getActorsFromServer(completionHandler:@escaping([Actor])  ->Void ) {
        guard let downloadURL = url else { return }
        
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                
                return
            }
            print("downloaded")
            do
            {
               let decoder = JSONDecoder()
             
                let downloadActors = try decoder.decode(Actors.self, from: data)
             
          
                completionHandler(downloadActors.actors)
            } catch let error1 as NSError {
                print("something wrong after downloaded\(error1) as Any")
               
            }
            }.resume()
    }
    
}
