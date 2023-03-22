import Vapor
import FluentPostgresDriver
// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))


    //PostgeSQL Config
     app.databases.use(
     .postgres(hostname: "localhost",
     username: "postgres",
     password: "",
     database: "vapordb"),
     as: .psql)
    
    
    app.migrations.add(CreateChannel())
    app.migrations.add(CreateShow())

    try routes(app)
    try app.autoMigrate().wait()
    
}

