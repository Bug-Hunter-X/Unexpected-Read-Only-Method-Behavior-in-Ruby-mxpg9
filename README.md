# Ruby Read-Only Method Bug

This repository demonstrates a common, yet subtle, bug in Ruby related to method definitions and implicit read-only behavior.

The `bug.rb` file shows a class with a `value` method that acts as a getter but does not allow direct assignment.  Attempting to assign a new value to `my_object.value` does not modify the internal state. This can be quite surprising for developers accustomed to object properties behaving more dynamically like those in languages such as JavaScript.

The `bugSolution.rb` demonstrates three solutions for making the value modifiable:

* **Using `attr_accessor`:** This provides both a getter and a setter method. 
* **Using `attr_reader` and a setter method:** Offers flexibility. 
* **Explicit setter method:** This provides total control over assignment rules.

This example helps illustrate the importance of explicit accessor declarations for variables in classes to avoid unexpected behavior.