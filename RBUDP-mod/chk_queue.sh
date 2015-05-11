#!/bin/bash

vmstat | tail -1 | awk '{print $1}'
