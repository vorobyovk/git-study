#!/bin/bash

#if router address for subnet1 is 212.100.54.1

route add -net 212.100.54.64/26 gw 212.100.54.1
route add -net 212.100.54.128/25 gw 212.100.54.1