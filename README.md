# meteor-coffeescript-property

Nice approach for defining properties with getters and setters in CoffeeScript.

Made by [![Professional Meteor Development Studio](http://s30.postimg.org/jfno1g71p/jss_xs.png)](http://jssolutionsdev.com) - [Professional Meteor Development Company](http://jssolutionsdev.com)

You can use `property` function with nested getter and/or setter. Or just use `setter` and `getter` directly. In both cases you should pass property name as the first argument.

```coffeescript
  class Woman
    constructor: (name, age) ->
      @name = name
      @age = age
  
    _age = null
  
    @property 'age',
      get: () ->
        if 16 <= _age < 20 or 30 <= _age then _.random 20, 24 else _age
      set: (newAge) ->
        _age = newAge
  
    @setter 'name', (newName) ->
      @_name = newName
  
    @getter 'name', () ->
      "Hey! My name is #{@_name}. I'm #{@age} y.o. And bla-bla-bla..."
      
      
  cristy = new Woman 'Cristy', 22
  
  cristy.name
  # Returns "Hey! My name is Cristy. I'm 22 y.o. And bla-bla-bla..."
  
  cristy.age
  # Return 22
```
