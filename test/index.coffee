import '../src/index'
import test from 'tape'

class Person
  constructor: (@firstName, @lastName) ->

  @property(
    name:
      get: -> "#{@firstName} #{@lastName}"
      set: (name) -> [@firstName, @lastName] = name.split ' '
  )

p = new Person('a','b')
console.log p.name
test 'property', (t)=>

  p = new Person('a','b')
  t.equal p.name, 'a b'
  p.name = "1 2"
  t.equal p.lastName, '2'
  t.end()
console.log 'yes'
