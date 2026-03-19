from micrograd.engine import Value

# Simulate "normal" behavior
a = Value(2.0)
b = Value(3.0)
c = a * b
c.backward()

print("Normal run complete")

# Simulate "unsafe / abnormal" behavior
x = Value(100.0)
y = Value(200.0)
z = x * y
z.backward()

print("Abnormal run complete")
