//
//  File.swift
//  
//
//  Created by Njoud saud Al-Najem on 27/08/1444 AH.
//

import Vapor
import Fluent


struct channelController: RouteCollection {
  
    func boot(routes: Vapor.RoutesBuilder) throws {
        let PodcastChannel = routes.grouped("PodcastChannel")
        PodcastChannel.get(use: index)
        PodcastChannel.post(use: create)
        PodcastChannel.group(":ID") { PodcastChannel  in
        PodcastChannel.delete(use: delete)
        }
       
    }
  
    
        // READ - GET
        func index(req: Request) async throws -> [podcastChannel] {
            try await podcastChannel.query(on: req.db).all()
        }
        
    

 
 // CREATE - POST
   func create(req: Request) throws -> EventLoopFuture<podcastChannel> {
      let PodcastChannel = try  req.content.decode(podcastChannel.self)
     return PodcastChannel.save(on: req.db).map { PodcastChannel }
    }
    
    /*
    func create(req: Request) async throws -> Channel {
        let channel = try req.content.decode(Channel.self)
        try await channel.save(on: req.db)
        return channel
    }
*/
        
        
        func delete(req: Request) throws -> EventLoopFuture<HTTPStatus> {
            return podcastChannel.find(req.parameters.get("ID"), on: req.db)
                .unwrap(or: Abort(.notFound))
                .flatMap { $0.delete(on: req.db) }
                .transform(to: .ok)
        }
        
    }


