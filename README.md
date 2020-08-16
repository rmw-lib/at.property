# Object.defineProperty for coffeescript

install

```
npm install at.property
```

use

```
require 'at.property'

class Person
  constructor: (@firstName, @lastName) ->

  @property(
    name:
      get: -> "#{@firstName} #{@lastName}"
      set: (name) -> [@firstName, @lastName] = name.split ' '
  )
```

code


```
Function::property = (dict) ->
  for attr of dict
    Object.defineProperty @::, attr, dict[attr]
```

