//
//  File.swift
//  
//
//  Created by Njoud saud Al-Najem on 24/08/1444 AH.
//

import Fluent
import Vapor

final class Show: Model , Content{
    // Name of the table or collection.
    static let schema = "show"

    // Unique identifier for this Galaxy.
    @ID(key: .id)
    var id: UUID?


    @Field(key: "show_name")
    var show_name: String

    @Field(key: "category")
    var category: String
    
    @Field(key: "title_of_episode")
    var title_of_episode: String
    
    @Field(key: "episode")
    var episode : Int
    
    @Field(key: "url")
    var url: String
    
  
    @Field(key: "created_on")
    var created_on:  String
    
    /*
    
    @Timestamp(key: "created_on", on: .create, format: .iso8601)
    var created_on: Date?
    */
    
    // Reference to the Channel this Shwo is in.
    @Parent(key: "channel_id")
    var channel_id:  podcastChannel
    
    init() { }

    // Creates a new Channel with all properties set.
    init(id: UUID? = nil, show_name : String, category: String ,title_of_episode : String ,episode: Int ,url: String  ,created_on: String, channel_id : UUID) {
        self.id = id
        self.show_name = show_name
        self.category = category
        self.title_of_episode = title_of_episode
        self.episode = episode
        self.url  = url
        self.created_on = created_on
        self.$channel_id.id = channel_id
    }
    
         
}
