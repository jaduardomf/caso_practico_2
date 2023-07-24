#!/bin/bash
#
#Author: Javier Eduardo Marín Fernández

az login -u javiereduardo.marin715@comunidadunir.net -p ardo570FMari_
ansible-playbook playbook_webserver.yml -i inventory
az aks get-credentials --resource-group rg-casopractico2 --name aks1
ansible-playbook playbook_aks.yml -i inventory