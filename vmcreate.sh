#!/bin/bash

#create the resource group and location
az group create -l eastus -n testrg

# create the vnet and subnet
az network vnet create -n testvnet -g testrg --address-prefix 10.0.0.0/16 --subnet-name subnet1 --subnet-prefix 10.0.20.0/24

#az network vnet subnet create -g testrg --vnet-name testvnet -n subnet1 --address-prefixes 10.0.20.0/24

#create the vm
az vm create -n testvm -g testrg --image UbuntuLTS --vnet-name testvnet --subnet subnet1 --admin-username "azuser" --admin-password "Goosebum@123" --size Standard_DS2_v2
