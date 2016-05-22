# Dictionary Practice in Objective-C

## Goals
Dictionaries are a fundamental class in software development, and it's important to be comfortable with them. In this lab you're going to practice creating, writing to, accessing, and mutating dictionaries in Objective-C. You'll also get additional experience working with nested dictionaries, creating dummy data, and using logs to see the contents of your variables.

## Review
Let's go over what an **`NSDictionary`** is and how it's structured. 

Like an `NSArray`, an `NSDictionary` represents a collection of objects, which are referred to as *values*. You can store objects of any class inside, and those objects can even be `NSArray`s or other NSDictionaries.

Unlike an `NSArray`, which keeps track of the order of the objects it contains using an index, *the objects contained in an `NSDictionary` are unordered*. Since an unordered jumble of objects by itself isn't very useful, an `NSDictionary` requires that each of its values have a unique *key*.

> Think of the following stack of cats as an `NSArray`. The cats are stacked in a particular order, from the bottom up, and if you add or remove a cat at a particular location in the stack, the rest of the stack stays in the same order. Taking a cat (and its shelf) from anywhere but the top end of the stack would cause the rest of the cats to shift down and fill the empty space.

![Array of cats](http://www.gibbahouse.com/wp-content/uploads/2014/03/Stack-of-Cats.jpg)

> These dogs, however, are much more like an `NSDictionary`. The puppies, like values, may jump all over one another and have no particular order. However, each puppy can be retrieved using its specific leash, or key, since no two dogs share a leash.

![Dictionary of dogs](http://www.cityofsparks.us/sites/default/files/assets/Dogs%20on%20Leash.png)

## Instructions
### 1. Create some dummy data
Let's get started by opening up the provided Xcode project and creating data to work with. Instantiate an empty `NSDictionary` called `favoriteBands` in the AppDelegate.m file. Add an `NSLog` to print out the contents of your new `NSDictionary`, as well as your own description of what's being printed, to the console. It should look something like this:

```objc
Contents of favoriteBands dictionary: 
{

}
```

Great! We've got a place to store your favorite bands. But wait, we can't write to this dictionary as it is...

### 2. Create a mutable dictionary
Since we can't write to an `NSDictionary`, we're going to have to create a version we can edit. Go ahead and make an `NSMutableDictionary` by copying our original `favoriteBands` using `mutableCopy`.

Now that we've got a dictionary we can edit, let's add in your favorite bands and their albums.

### 3. Add key-value pairs to the mutable dictionary


### 4. Change the contents of the mutable dictionary
`setObject:forKey:`
`removeObjectForKey:`

### 5. Enumerate a dictionary
> Warning: Dictionaries should not be altered while iterating over them.

### 6. Accessing keys from a dictionary
`allKeys`

### 7. 


### . Create dictionaries with different syntaxes
* Literal syntax
* Values and keys as arguments
* Values and keys as arrays



### . Add a dictionary as a value within a dictionary


### . Access values within a nested dictionary


### Combine contents of dictionaries

>
### Primitive types vs. Reference types
All objects in Objective-C are of either Primitive type or Reference type. Reference types are any instantiable class, including Dictionaries and more complex objects, meaning you must create/initialize an instance of the class for it to exist. When you visit the memory location of a Primitive type object, you will see the value of the object. When you visit the memory location of a Reference type object, you will find pointers to other memory locations where the values of the variables inside the object reside.