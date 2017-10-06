#!/bin/bash

echo $* | sed 's/ /+/g' | bc
