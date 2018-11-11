require "examples"
local classy = require "classy"
local import = classy.import

local Greeter = import("Greeter")
local greeter = Greeter()

greeter.say_hello("World")
-- greeter.private_hello()


local Person = import("Person")
local slim = Person("Slim Shady")

print("Number of persons: "..Person.count)

local jimmy = Person("Jimmy")

slim.introduce()
slim.say_hello("World")

print("Number of persons: "..slim.count)

jimmy:introduce()

-- a = { Test }
-- print(a[1])
