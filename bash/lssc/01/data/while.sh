#!/bin/bash

a=1;
while [[ $a < 3 ]]; do
    echo "$a";
    ((a+=1));
done
