#!/bin/bash

ssh-keygen -q -f ~/.ssh/id_rsa -N ""
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
chmod 755 ~/.ssh/authorized_keys
