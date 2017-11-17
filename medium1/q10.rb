# Question 10

# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

#---------------------------------------------------------
# foo always returns yes and does not require a parameter
# foo => "yes"
# bar("yes") => "no"
