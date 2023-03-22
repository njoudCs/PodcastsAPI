
import Fluent

struct CreateShow: AsyncMigration {
    
    // Prepares the database for storing Galaxy models.
    func prepare(on database: Database) async throws {
        try await database.schema("show")
            .id()
            .field("show_name", .string , .required)
            .field("category", .string ,.required)
            .field("title_of_episode", .string, .required)
            .field("episode", .int , .required)
            .field("url", .string)
            .field("created_on", .string)
            .field("channel_id", .uuid, .references("PodcastChannel", "id"))
            .create()
    }

    // Optionally reverts the changes made in the prepare method.
    func revert(on database: Database) async throws {
        try await database.schema("show").delete()
    }
}
