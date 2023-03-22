# 🎧PodcastsAPI
The Podcasts is handled by this vapor API. The API supports all primary CRUD operations: create, read, update, and delete.


## 📦Installation   

* vapor is available on **Mac**,**Linux**.

### Mac (To use Vapor on macOS, you will need Swift 5.2 or greater. Swift and all of its dependencies come bundled with Xcode.)

 download frome [here](https://docs.vapor.codes/install/macos/) 

### Linux (To use Vapor, you will need Swift 5.2 or greater. This can be installed using the toolchains available on Swift.org)

 download frome [here](https://docs.vapor.codes/install/linux/) 

* PostgreSQL database

 download frome [here](https://www.postgresql.org/download/) 



## 📍Endpoints
### Channel Endpoints
* Get all Channels
Returns a list of all Channels.

```
  GET /PodcastChannel
  
```

  <img width="471" alt="Screenshot 1444-08-30 at 1 19 41 PM" src="https://user-images.githubusercontent.com/85634409/226876856-ec39b012-370c-4464-abe0-c87dc62a2b4a.png">
  
  
### get result

<img width="644" alt="Screenshot 1444-08-30 at 3 47 35 PM" src="https://user-images.githubusercontent.com/85634409/226909267-fdedd267-98f0-486d-9d37-34f3613c8a4a.png">
  
* Create a new Channel

```
  POST /PodcastChannel
```

### post result

<img width="634" alt="Screenshot 1444-08-30 at 3 45 03 PM" src="https://user-images.githubusercontent.com/85634409/226908971-f6e4cc3f-9ac6-45ec-8602-7114b324b6c2.png">

* Update a Channel

```
  PUT /PodcastChannel
```

* Deletes a specific Channel by ID

```
DELETE /PodcastChannel/{id}
```
### delete result

<img width="647" alt="Screenshot 1444-08-30 at 3 50 30 PM" src="https://user-images.githubusercontent.com/85634409/226909832-b1adc36b-b122-46e8-96c9-973e89113200.png">

### Shows Endpoints
* Get all Shows
Returns a list of all shows options.

```
 GET /show

```
  
<img width="302" alt="Screenshot 1444-08-30 at 1 34 24 PM" src="https://user-images.githubusercontent.com/85634409/226876976-f9292c12-585a-4131-b848-5e6b9d3fb14c.png">

### get result

<img width="1071" alt="Screenshot 1444-08-30 at 3 52 22 PM" src="https://user-images.githubusercontent.com/85634409/226910327-63819d97-a6d9-4da0-a6e7-beb7c3b10ece.png">

* Create a new Show

```
  POST /show
```
### post result

<img width="1059" alt="Screenshot 1444-08-30 at 3 53 54 PM" src="https://user-images.githubusercontent.com/85634409/226910565-9263848c-0242-40ec-8e96-f4f71cfe33b2.png">

* Update a Show

```
  PUT /show
```
### update result

befoe update date

<img width="933" alt="Screenshot 1444-08-30 at 4 00 13 PM" src="https://user-images.githubusercontent.com/85634409/226912530-19506945-2002-41b3-adb2-17e99ec14b20.png">

result after update date

the<img width="1047" alt="Screenshot 1444-08-30 at 4 00 33 PM" src="https://user-images.githubusercontent.com/85634409/226912577-7746967f-481a-4097-b7dc-4c731c74dafc.png">

* Deletes a specific Show by ID

```
DELETE /show/{id}
```
### delete result

<img width="1073" alt="Screenshot 1444-08-30 at 3 56 02 PM" src="https://user-images.githubusercontent.com/85634409/226911182-1f01b130-0286-4f77-9dc0-b46d0471d733.png">

## 📎Models
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
## 🗒️Tables

* PodcastChannel table

<img width="612" alt="Screenshot 1444-08-30 at 2 37 30 PM" src="https://user-images.githubusercontent.com/85634409/226896402-32331d7d-3103-41a7-ba2d-cc49fe3321c2.png">

* show table 

<img width="1512" alt="Screenshot 1444-08-30 at 2 37 39 PM" src="https://user-images.githubusercontent.com/85634409/226896446-07d6c713-aa78-4165-b7e3-7e496e7d5767.png">



## 🌿Developers

#### Njoud Alnajem : [linkedin](www.linkedin.com/in/njoudcs)
#### Shorouq Khallaf: [linkedin](https://www.linkedin.com/in/shorouq-khallaf-53b84316b)
#### Noura Aljaber : [linkedin](https://www.linkedin.com/in/noura-aljaber-817a17210/)



