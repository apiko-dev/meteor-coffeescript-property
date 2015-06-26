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



Tinytest.add 'jss:coffeescript-property::property', (test) ->
  cristy = new Woman 'Cristy', 22
  name = "Hey! My name is Cristy. I'm 22 y.o. And bla-bla-bla..."
  test.equal cristy.name, name
  test.equal cristy.age, 22
