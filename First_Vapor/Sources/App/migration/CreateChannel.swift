//
//  File.swift
//  
//
//  Created by Njoud saud Al-Najem on 27/08/1444 AH.
//


import Fluent

struct CreateChannel: AsyncMigration {
    
    // Prepares the database for storing Galaxy models.
    func prepare(on database: Database) async throws {
        try await database.schema("PodcastChannel")
            .id()
            .field("channel_name", .string , .required)
            .create()
    }

    // Optionally reverts the changes made in the prepare method.
    func revert(on database: Database) async throws {
        try await database.schema("PodcastChannel").delete()
    }
}
