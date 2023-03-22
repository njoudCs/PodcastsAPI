# PodcastsAPI
The Podcasts is handled by this vapor API. The API supports all primary CRUD operations: create, read, update, and delete.

## Endpoints
### Channel Endpoints
* Get all Channels
Returns a list of all Channels.

```
  GET /PodcastChannel
```
* Create a new Channel

```
  POST /PodcastChannel
```
* Update a Channel

```
  PUT /PodcastChannel
```
* Deletes a specific Channel by ID

```
DELETE /PodcastChannel/{id}
```

### Shows Endpoints
* Get all Shows
Returns a list of all packaging options.

```
 GET /show
```
* Create a new Show

```
  POST /show
```
* Update a Show

```
  PUT /show
```
* Deletes a specific Show by ID

```
DELETE /show/{id}
```
## Models
The two models in the API are:
* podcastChannel
* Show

### podcastChannel Model
```swift

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



```
### Show Model

```swift
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


```


## Contribution

You are welcome to fork the repository and send a pull request to this project.

