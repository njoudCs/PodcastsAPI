import Vapor
import Fluent

//This file holds the paths and associate a method defined in controllers.

func routes(_ app: Application) throws {
    
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    
    
    app.get("username", ":name") { req  -> String in
        let name = req.parameters.get("name")!
        return "Hello, \(name)!"
    }
    
    try app.register(collection: channelController())
    try app.register(collection: showController())

}


