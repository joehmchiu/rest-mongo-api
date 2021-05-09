#!/bin/sh

cd /app
npm install
npm audit fix
npm install mongodb
npm install forever -g
npm audit fix
forever stop 0
forever start server.js
forever list

