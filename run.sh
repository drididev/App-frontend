#! /bin/bash

str=$*
echo $str
eval docker compose run app $str