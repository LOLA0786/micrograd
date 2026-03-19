#!/bin/bash

FILE="micrograd/engine.py"

# Insert after node._backward()
sed -i '/node._backward()/a\
            # PrivateVault Agent Firewall\
            try:\
                if hasattr(node, "grad") and abs(node.grad) > 1.0:\
                    print("⚠️ Agent Firewall Alert:", node.grad)\
            except Exception:\
                pass\
' $FILE

echo "✅ Agent Firewall injected"
