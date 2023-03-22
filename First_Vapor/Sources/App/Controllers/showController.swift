//
//  File.swift
//  
//
//  Created by Njoud saud Al-Najem on 27/08/1444 AH.
//

import Vapor
import Fluent


struct showController: RouteCollection {
  
    func boot(routes: Vapor.RoutesBuilder) throws {
        let show = routes.grouped("show")
        show.get(use: index)
        show.post(use: create)
        show.group(":ID") { show  in
        show.put(use: update)
        }
        
        show.group(":ID") { show  in
        show.delete(use: delete)
        }
    
       
    }
  
    
        // READ - GET
        func index(req: Request) async throws -> [Show] {
            try await Show.query(on: req.db).all()
        }
        
    

 
 // CREATE - POST
   func create(req: Request) throws -> EventLoopFuture<Show> {
      let show = try  req.content.decode(Show.self)
    //   print(show.created_on,"🐶")
     return show.save(on: req.db).map { show }
    }
    
    /*
    func create(req: Request) async throws -> Channel {
        let channel = try req.content.decode(Channel.self)
        try await channel.save(on: req.db)
        return channel
    }
*/
        
    // UPDATE - PUT
    func update(req: Request) async throws -> HTTPStatus {
        
        let newShow = try  req.content.decode(Show.self)
        guard let show = try await Show.find(newShow.id, on: req.db) else {
                          throw Abort(.notFound)
        }
        
        show.show_name = newShow.show_name
        show.category = newShow.category
        show.title_of_episode = newShow.title_of_episode
        show.episode = newShow.episode
        show.url = newShow.url
        show.created_on = newShow.created_on

      try await  show.save(on: req.db)
        return .ok
        
            }


    
        func delete(req: Request) throws -> EventLoopFuture<HTTPStatus> {
            return Show.find(req.parameters.get("ID"), on: req.db)
                .unwrap(or: Abort(.notFound))
                .flatMap { $0.delete(on: req.db) }
                .transform(to: .ok)
        }
        
    }


