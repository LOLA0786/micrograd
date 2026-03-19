#!/bin/bash

FILE="micrograd/engine.py"

# Insert right after backward() definition
sed -i '/def backward(self):/a\
        # PrivateVault Agent Firewall\
        print("⚠️ Agent Firewall initialized")\
' $FILE

echo "✅ Agent Firewall injected (v3)"
