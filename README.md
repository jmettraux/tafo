
# tafo

Some kind of `tail -f`, but with colours.


## install

```sh
$ cd ~/w && git clone git@github.com:jmettraux/tafo
$ chmod a+x ~/w/tafo/src/tafo
$ cd ~/bin && ln -s ~/w/tafo/src/tafo
$ cd ~/bin && ln -s ~/w/tafo/src/tafo taca
$ cd ~/bin && ln -s ~/w/tafo/src/tafo tale
```

## usage

```sh
$ tafo webapp.log
  # instead of
$ tail -f webapp.log

$ taca webapp.log
  # instead of
$ cat webapp.log

$ tale webapp.log
  # instead of
$ less webapp.log
```


## license

MIT, see [LICENSE.txt](LICENSE.txt).

