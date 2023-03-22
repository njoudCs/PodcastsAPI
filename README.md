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
  PUT /show/{id}
```
* Deletes a specific Show by ID

```
DELETE /show/{id}
```
## Models
The API has two models: Product and Packaging.

### Product Model

```swift
final class Product: Model, Content {
    static let schema = "products"
    
    @ID(key: .id)
    var id: UUID?
    @Field(key: "name")
    var name: String

    @Field(key: "description")
    var description: String

    @Field(key: "price")
    var price: Double

    @Parent(key: "packaging_id")
    var packaging: Packaging
    
    init() { }

    init(name: String, description: String, price: Double, packaging: Packaging) {
           self.name = name
           self.description = description
           self.price = price
           self.$packaging.id = packaging.id!
       }
    
    
    
}


```
### Packaging Model

```swift
final class Packaging: Content, Model  {
    static let schema = "packaging"
    
    @ID(key: .id)
    var id: UUID?
    @Field(key: "name")
    var name: String

    @Field(key: "description")
    var description: String

    @Field(key: "sustainabilityRating")
    var sustainabilityRating: Double

    @Children(for: \.$packaging)
    var pacginng: [Product]
    
    init() { }
    
    
  
        init(id: UUID?, name: String, description: String, sustainabilityRating: Double) {
            self.id = id
            self.name = name
            self.description = description
            self.sustainabilityRating = sustainabilityRating
        }
    

}

```
## Usage
To use this API, you will need to have Vapor installed. If you don't have Vapor installed, you can follow the installation guide [Here](https://docs.vapor.codes/install/macos/).

Once you have Vapor installed, you can clone the repository by running the following command in your terminal:
```
git clone https://github.com/RoaPro9/SustainableProductsAPI.git
```
Next, navigate to the cloned repository and run the following command to build and start the API server:
```
vapor run
```
This will start the API server, and you can then access the endpoints via a client such as Postman or cURL.

## Contribution

Feel free to contribute to this project by forking the repository and submitting a pull request.
