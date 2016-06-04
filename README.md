# Dictionary Practice in Objective-C

## Goals
Dictionaries are a fundamental class in software development, and it's important to be comfortable with them. In this lab you're going to practice creating, writing to, accessing, and mutating dictionaries in Objective-C. You'll also get additional experience working with nested dictionaries, creating dummy data, and using logs to see the contents of your variables.

## Review
Let's go over what an **`NSDictionary`** is and how it's structured. 

Like an `NSArray`, an `NSDictionary` represents a collection of objects, which are referred to as **values**. You can store objects of any class inside, and those objects can even be `NSArray`s or other `NSDictionaries`.

Unlike an `NSArray`, which keeps track of the order of the objects it contains using an index, *the objects contained in an `NSDictionary` are unordered*. Since an unordered jumble of objects by itself isn't very useful, an `NSDictionary` requires that each of its values have a unique **key**. A key may be of any object type, such as an `NSNumber` or `NSString`.

> Think of the following stack of cats as an `NSArray`. The cats are stacked in a particular order, from the bottom up, and if you add or remove a cat at a particular location in the stack, the rest of the stack stays in the same order. Taking a cat (and its shelf) from anywhere but the top end of the stack would cause the rest of the cats to shift down and fill the empty space.

![Array of cats](http://www.gibbahouse.com/wp-content/uploads/2014/03/Stack-of-Cats.jpg)

> These dogs, on the other hand, are much more like an `NSDictionary`. The puppies, like values, may jump all over one another and have no particular order. However, each puppy can be retrieved using its specific leash (i.e., key) since no two dogs share a leash. It's also possible for a single puppy to have multiple unique leashes, but this gets into more advanced dog walking which we won't cover here.

![Dictionary of dogs](http://www.cityofsparks.us/sites/default/files/assets/Dogs%20on%20Leash.png)

## Instructions
### Create some dummy data
Let's get started by opening up the provided Xcode project and creating data to work with. Instantiate an empty `NSDictionary` called `favoriteBands` in the AppDelegate.m file, where all your code will go. Add an `NSLog` to print out the contents of your new `NSDictionary`, as well as your own description of what's being printed, to the console when you hit ⌘ + R. It should look something like this:

```objc
Here's the empty favoriteBands dictionary:
{
}
```

Great! We've got a place to store your favorite bands. But wait, we can't write to this dictionary as it is...

### Create a mutable dictionary
Since we can't write to an `NSDictionary`, we're going to have to create a version we can edit. Go ahead and make an `NSMutableDictionary` called `mFavoriteBands` using the `dictionaryWithDictionary:` method. You should use the original dictionary you created as the argument for this method.

> The reason `dictionaryWithDictionary:` is preferable to `mutableCopy` is that we can be certain a new dictionary will be created. If the original object from which we try to create a `mutableCopy` is `nil`, we'll get back `nil`, not a new object.

Now that we've got a dictionary we can edit, let's add in your favorite bands and their albums.

### Add key-value pairs to a mutable dictionary
Think of three of your favorite bands or musical artists, then find the titles of your favorite album by each band/artist. With your three artists and three albums, you now have enough information to add key-value pairs into the `favoriteBands` dicionary.

Let's add the first artist-album pair by calling the `setObject:forKey:` method on `mFavoriteBands`. For the next pair, use the literal syntax and diectly set the value for the key. This line of code should look something like `mFavoriteBands[@"FAVORITE BAND"] = @"FAVORITE ALBUM"`. Here we're telling the dictionary that the key `FAVORITE BAND` should link to the value `FAVORITE ALBUM`.

Choose one of the two methods you just implemented to add your third artist-album pair to `mFavoriteBands`. Then write an `NSLog` to show the contents of the dictionary now that we've added our favorite bands and albums. The results should be similar to this:

```objc
Favorite bands and albums:
{
	"Queens of the Stone Age" = "Songs for the Deaf",
	"Death from Above 1979" = "The Physical World",
	"Spoon" = "They Want My Soul"
}
```

### Removing items from a mutable dictionary
Let's say we're no longer fans of one of our former favorite bands, and we therefore want to remove them from our dictionary. How can we do this? Since we have a mutable dictionary, we can do this using the method `removeObjectForKey:`. Pick one of the bands and remove it from `mFavoriteBands`. Use an `NSLog` to print the contents of `mFavoriteBands` to ensure the band has been removed.

### Enumerate a dictionary
What would you use to print to the console just the values within your dictionary? By using a `for in` loop we can iterate over the keys of a dictionary. **But be careful!** Dictionaries should not be altered while iterating directly over them. Bad things will happen. If you intend to change the values within a dictionary through enumeration, do so by creating a snapshot of the keys of the dictionary and iterating over those. Please see [this source](http://rypress.com/tutorials/objective-c/data-types/nsset#enumeration-considerations) for additional information.

### Retrieving keys from a dictionary
How can we check if our dictionary contains a certain key? What if we want to print out a list of every keys in our dictionary? Or say we want to check and change one or more values in our dictionary. One method we can call on our dictionary to accomplish these goals is `allKeys`, which returns an `NSArray` that contains (as the name suggests) all the keys in the dictionary. We can iterate over this list of keys to reach the appropriate values within our dictionary.

Create a `for in` loop to iterate over the keys in `mFavoriteBands` and use the `objectForKey` method to print out each value it contains with an `NSLog`. 

What if we know that our dictionary contains a certain value, but we don't know what its key or keys are? Or, let's say we know multiple keys have the same value, but we don't know which keys exactly. How might we find those keys? In these instances we could use `keysContaingObject:` on our dictionary, which returns an array of keys whose values match the object we specify.

### Nested dictionaries
Let's add some tracks to on of our our favorite albums. Create a new dictionary object for an album and include the track numbers as keys and track titles as values. The track numbers can be written as `NSNumber`s An example might look like this:

```objc
NSDictionary *thePhysicalWorld = @{    @1 : @"Cheap Talk",
                                       @2 : @"Right On, Frankenstein!",
                                       @3 : @"Virgins",
                                       @4 : @"Always On",
                                       @5 : @"Crystal Ball",
                                       @6 : @"White Is Red",
                                       @7 : @"Trainwreck 1979",
                                       @8 : @"Nothin' Left",
                                       @9 : @"Government Trash",
                                      @10 : @"Gemini",
                                      @11 : @"The Physical World"  };
```

Using the `setObject:forKey:` method and passing in this new dictionary with the album's songs, replace the value for your chosen album in `mFavoriteBands` and use an `NSLog` to print out the entire dictionary and verify your results. 

Using a `for in` loop, `NSLog` each of the songs in this album. Remember that to access the values within a nested dictionary, you need to call on all the higher level keys first. This can be done using the following syntax: `dictionary[@"keyInTopDictionary][@"keyInNestedDictionary"]`.

### Combine contents of dictionaries
How would you show all your favorite albums together in a single dictionary without artists? To copy or combine the contents of a dictionary or sub-dictionary into a mutable dictionary, call the method `addEntriesFromDictionary:`. This copies the key-value pairs of the argument dictionary into the `NSMutableDictionary` on which you call the method.

Create a new mutable dictionary called `favoriteAlbums` and add all the album dictionaries into this by iterating over `mFavoriteBands`. Do not hard code any part of this problem. `NSLog` the `favoriteAlbums` dictionary to verify your results.

## Recap
That's it for now! You created new objects of type `NSDictionary` and `NSMutableDictionary`, added and removed key-value pairs, enumerated over and examined all the elements in a dictionary, collected all the keys from a dictionary, nested one dictionary inside another, and combined the contents of multiple dictionaries.