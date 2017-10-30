#!/bin/sh

ocamlbuild MyBot.native -I src
./halite -d "240 160" "./MyBot.native" "./MyBot.native"
