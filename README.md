# vim-usa-president-2020

Indicate USA President 2020 in Vim

![vim-usa-president-2020](https://raw.githubusercontent.com/mattn/vim-usa_president_2020/main/misc/screenshot.png)

## Usage

Set `usa_president_2020#status()` into you `statusline` like below.

```vim
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\[%{usa_president_2020#status()}\]\ %P
```

For lightline

```vim
let g:lightline = {
\   ...
\   'component_function': {
\     'usa_president_2020': 'usa_president_2020#status',
\   },
\ }
```

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
