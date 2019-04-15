# fish functions

## General Stuff
#### Step down 1/2/3 directories
```shell
> ..
> ....
> ......
```

## Git Stuff
#### Add files
```shell
> add [ARGS]
```

#### Amend last commit with message
```shell
> amend [MESSAGE]
```

#### Commit
```shell
> c  [MESSAGE]
> cm [MESSAGE]
```

#### Commit all
```shell
> ca [MESSAGE]
```

#### Show diff to last commit
```shell
> diffc
```

#### Fetch origin
```shell
> fetch
```

#### Push to upstream
```shell
> push
> fpush # force-push
```

#### Set upstream to origin/master and push
```shell
> pushm
```

#### Pull from upstream
```shell
> pull
```

#### Pretty git log
```shell
> log
```

#### Update submodules recursively
```shell
> update
```

#### Unstage files
```shell
> unstage [FILE]
```

#### Reset HEAD to last commit
```shell
> hreset
```

## Other Stuff

#### Pretty cmake build with xcpretty
```shell
> cmakebuildp [LOCATION] [OPTIONS]
```

## JSON Editing

Given JSON File:
```json
{
    "prop" : "Value",
    "arr"  : ["Value1","Value2"]
}
```

#### Print pretty JSON
##### with Python
```shell
> prettyjson [FILE]
```
##### with Node.js
```shell
> catjson [FILE]
```

#### Get JSON property
```shell
> catprop [FILE] [PROP]

# Example:
> catprop ex.json .arr[0]
Value1
```

#### Edit JSON properties
```shell
# cat JSON contents with edited NUMBER prop
#   withnprop [FILE] [PROP] [NUM]

> withnprop ex.json .prop 10
{"prop":10,"arr":["Value1","Value2"]}

# cat JSON contents with edited STRING prop
#   withsprop [FILE] [PROP] [STR]

> withsprop ex.json .prop "Hello"
{"prop":"Hello","arr":["Value1","Value2"]}

# set NUMBER property in place
#   setnprop [FILE] [PROP] [NUM]

> setnprop ex.json .prop 12 # will edit in place

# set STRING property in place
#   setnprop [FILE] [PROP] [STR]

> setsprop ex.json .prop "Hello" # will edit in place
```
