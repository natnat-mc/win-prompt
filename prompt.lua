#!/usr/bin/env lua

local dir, home, drive = ...

local prefix
if dir:sub(1, #home) == home then
	prefix = ''
	dir = dir:sub(#home+1)
else
	prefix = '\\System32'
end

if dir:sub(-1) == '/' then
	dir = dir:sub(1, -2)
end
dir = dir:gsub('/', '\\')
if dir == '' then
	dir = '\\'
end

io.write(drive, ':', prefix, dir, '> ')
