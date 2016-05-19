if type "luarocks-5.1" > /dev/null; then
  # install foobar here
  luarocks-5.1 install --tree lua_modules utf8
  luarocks-5.1 install --tree lua_modules luasocket
  luarocks-5.1 install --tree lua_modules luasec
  luarocks-5.1 install --tree lua_modules turbo
elif type "luarocks" > /dev/null; then
  luarocks install --tree lua_modules utf8
  luarocks install --tree lua_modules luasocket
  luarocks install --tree lua_modules luasec
  luarocks install --tree lua_modules turbo
else
  echo "Couldn't find luarocks-5.1 or luarocks. You need luarocks installed for lua 5.1"
  exit 1
fi
