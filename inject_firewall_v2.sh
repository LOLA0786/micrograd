#!/bin/bash

FILE="micrograd/engine.py"

# Insert after the line containing 'for node in reversed'
sed -i '/for node in reversed/a\
            # PrivateVault Agent Firewall\
            try:\
                if hasattr(node, "grad") and abs(node.grad) > 1.0:\
                    print("⚠️ Agent Firewall Alert:", node.grad)\
            except Exception:\
                pass\
' $FILE

echo "✅ Agent Firewall injected (v2)"
