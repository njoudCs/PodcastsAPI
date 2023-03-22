# PodcastsAPI
The Podcasts is handled by this vapor API. The API supports all primary CRUD operations: create, read, update, and delete.


## 📦Installation   

* vapor is available on **Mac**,**Linux**.

### Mac (To use Vapor on macOS, you will need Swift 5.2 or greater. Swift and all of its dependencies come bundled with Xcode.)

 download frome [here](https://docs.vapor.codes/install/macos/) 

### Linux (To use Vapor, you will need Swift 5.2 or greater. This can be installed using the toolchains available on Swift.org)

 download frome [here](https://docs.vapor.codes/install/linux/) 

* PostgreSQL database

 download frome [here](https://www.postgresql.org/download/) 



## Endpoints
### Channel Endpoints
* Get all Channels
Returns a list of all Channels.

```
  GET /PodcastChannel
  
```

  <img width="471" alt="Screenshot 1444-08-30 at 1 19 41 PM" src="https://user-images.githubusercontent.com/85634409/226876856-ec39b012-370c-4464-abe0-c87dc62a2b4a.png">
  
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
Returns a list of all shows options.

```
 GET /show

```
 
 
<img width="302" alt="Screenshot 1444-08-30 at 1 34 24 PM" src="https://user-images.githubusercontent.com/85634409/226876976-f9292c12-585a-4131-b848-5e6b9d3fb14c.png">

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


## 🌿Developers

#### Njoud Alnajem : www.linkedin.com/in/njoudcs
#### Shorouq Khallaf: @ShorouqMK
### Noura Aljaber : @Nourafj 



