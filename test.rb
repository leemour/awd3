p [1,2,3,4,5].inject(:+)

module M
  class C
    p Module.nesting
  end
end
PI = 3
p global_variables
p local_variables
# p constants
# p class_variables

o = Object.new
p o.instance_variable_set(:@a, 5)
p o.instance_variable_get(:@a)
p o.instance_variable_defined? :@a

p Object.class_variable_set(:@@b, 33)
p Object.class_variable_get(:@@b)
p Object.class_variable_defined? :@@b

Math.const_set(:EPI, Math::E*Math::PI)
p Math.const_get(:EPI)

p o.instance_eval { remove_instance_variable :@a }
p Object.class_eval { remove_class_variable :@@b }
p Math.send :remove_const, :EPI
p Math.singleton_methods