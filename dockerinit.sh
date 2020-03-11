#!/bin/sh

machine_name=$1

if [ -L .docker ];then
	rm -rf .docker
fi
if [ -d .docker ];then
	rm -rf .docker
fi

if [ ! $machine_name = "" ];then
	docker-machine create $machine_name
	sleep 5
	cp -r .docker /sgoinfre/goinfre/Perso/$USER/.docker
	rm -rf .docker
	ln -s /sgoinfre/goinfre/Perso/$USER/.docker .
else
	echo "please give the machine name as first argument ! "
fi
