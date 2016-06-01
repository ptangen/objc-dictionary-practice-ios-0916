# Dictionary Practice in Objective-C

## Goals
Dictionaries are a fundamental class in software development, and it's important to be comfortable with them. In this lab you're going to practice creating, writing to, accessing, and mutating dictionaries in Objective-C. You'll also get additional experience working with nested dictionaries, creating dummy data, and using logs to see the contents of your variables.

## Review
Let's go over what an **`NSDictionary`** is and how it's structured. 

Like an `NSArray`, an `NSDictionary` represents a collection of objects, which are referred to as **values**. You can store objects of any class inside, and those objects can even be `NSArray`s or other `NSDictionaries`.

Unlike an `NSArray`, which keeps track of the order of the objects it contains using an index, *the objects contained in an `NSDictionary` are unordered*. Since an unordered jumble of objects by itself isn't very useful, an `NSDictionary` requires that each of its values have a unique **key**. A key may be of any object type.

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
What would you use to print to the console just the values within your dictionary? 

By using a `for in` loop we can iterate over the keys of a dictionary. Create a `for in` loop. Inside it  and use `objectForKey`
Literal syntax

> **Warning:** Dictionaries should not be altered while iterating over them. Bad things will happen. If you need to check and potentially change the values within a dictionary, first retrieve and store the relevant keys, then call those keys separately 

### Retrieving keys from a dictionary
How could we check that our dictionary contains a given key? What if we just want to print out a list of the keys from our dictionary? Or say we want to change each and every value in our dictionary in some way. One method we can call on our dictionary to solve these problems is `allKeys`, which returns an `NSArray` that contains (as the name indicates) all the keys in the dictionary. We can iterate over this list of keys to reach the appropriate values within our dictionary.

What if we know that our dictionary contains a certain value, but we don't know what its key or keys are? Or, let's say we know multiple keys have the same value, but we don't know which keys exactly. How might we find those keys? In these instances we could use `keysContaingObject:` on our dictionary, which returns an array of keys whose values match the object we specify.

### Nested dictionaries
Let's add some tracks to our favorite albums. Create a new dictionary object for each album and include the track numbers as keys and track titles as values. The track numbers can be written as `NSNumber`s An example might look like this:

```objc
NSDictionary *physicalWorldTracks = @{  @1 : @"Cheap Talk",
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



`dictionary[@"keyInTopDictionary][@"keyInNestedDictionary"]`

### Combine contents of dictionaries
How would you show all the songs from all the albums and a

`addEntriesFromDictionary:`


> Additional resource: http://rypress.com/tutorials/objective-c/data-types/nsdictionary