
# tafo

Some kind of `tail -f`.


## install

```sh
$ cd ~/w && git clone git@github.com:jmettraux/tafo
$ chmod a+x ~/w/tafo/src/tafo
$ cd ~/bin && ln -s ~/w/tafo/src/tafo
```

## usage

```sh
$ tafo webapp.log
  # instead of
$ tail -f webapp.log
```


## license

MIT, see [LICENSE.txt](LICENSE.txt).

