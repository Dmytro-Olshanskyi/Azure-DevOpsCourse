#! /bin/bash
az account subscription list -o table
echo ""
az account subscription list --query "[].subscriptionId" -o table




