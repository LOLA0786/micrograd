from micrograd.engine import Value

def run_case(name, x_val, y_val):
    print(f"\n--- {name} ---")

    x = Value(x_val)
    y = Value(y_val)
    z = x * y
    z.backward()

    # Simple "firewall logic"
    if abs(z.data) > 1000:
        print("🚨 Agent Firewall TRIGGERED: abnormal output:", z.data)
    else:
        print("✅ Safe execution:", z.data)

# Normal case
run_case("Normal Case", 2.0, 3.0)

# Abnormal case
run_case("Abnormal Case", 100.0, 200.0)
