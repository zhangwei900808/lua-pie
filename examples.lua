local classy = require("classy")
local class = classy.class
local static = classy.static
local public = classy.public
local private = classy.private
local extends = classy.extends

class "Greeter" {

	public {
		say_hello = function(name)
			self.private_hello(name)
		end
	};

	private {
		private_hello = function(name)
			print("Hello "..name)
		end
	}
}

class "Person" {

	extends "Greeter";

	static {
		count = 0
	};

    public {

		constructor = function(name)
			self.name = name
			print(self.name)
			self.count = self.count + 1
		end;

		introduce = function()
			self.private_intro()
		end;

		say_hello = function(name)
			self.super.say_hello(name)
			print("Override hello")
		end;
    };

    private {
		private_intro = function()
			print("Hi! My name is "..self.name)
		end;
	};
}