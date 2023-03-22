//
//  podcastChannel.swift
//  
//
//  Created by Njoud saud Al-Najem on 24/08/1444 AH.
//

import Fluent
import Vapor


final class podcastChannel:  Model , Content{
    // Name of the table or collection.
    
    static let schema = "PodcastChannel"

    @ID(key: .id)
    var id: UUID?

    
    @Field(key: "channel_name")
    var channel_name: String

    @Children (for:\.$channel_id)
    var showList:[Show]
   

    init() { }

   
    init(id: UUID? = nil, channel_name: String) {
        self.id = id
        self.channel_name = channel_name
    }
    
}
