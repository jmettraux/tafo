
unless defined?(RES)

  RES = "[0;0m"
  BRI = "[1m"
  RED = "[31m"
  GRN = "[32m"
  YEL = "[33m"
  LGN = "[92m"
  WHT = "[97m"
    #
    # reset 0;0
    # bright 1 dim 2 underlined 4 blink 5 reverse 7 hidden 8 default 39
    # black 30 red 31 green 32 yellow 33 blue 34 magenta 35 cyan 36
    # light_gray 37 dark_gray 90 light_red 91 light_green 92
    # light_yellow 93 light_blue 94 light_magenta 95 light_cyan 96 white 97
    # bg_default 49 bg_black 40 bg_red 41 bg_green 42 bg_yellow 43 bg_blue 44
    # bg_magenta 45 bg_cyan 46 bg_light_gray 47 bg_dark_gray 100
    # bg_light_red 101 bg_light_green 102 bg_light_yellow 103
    # bg_light_blue 104 bg_light_magenta 105 bg_light_cyan 106
    # bg_white 107

  S = ' '
end

puts(
  case l = $_
  when /^(.+)(GET|PUT|POST|DELETE|HEAD) ([^ ]+) (HTTP[^ ]+) (\d{3}) (.+)$/
    meth =
      '' << (%w[ PUT POST DELETE ].include?($2) ? BRI : '') << YEL << $2 << RES
    code =
      '' << (%w[ 2 3 ].include?($5[0, 1]) ? GRN : RED) + $5
    '' << $1 << meth << S << YEL << $3 << S << WHT << $4 << S << code << S << RES << $6
  when /[ (](SELECT|INSERT INTO|UPDATE|DELETE|BEGIN|COMMIT) /
    l.gsub(/SELECT|INSERT INTO|UPDATE|DELETE|(LEFT )?(INNER |OUTER )?JOIN |UNION (ALL )?|ORDER BY|SET|FROM|VALUES|WHERE|ON |AND |OR |IS |IN |NOT |NULL|AS |CAST|LIKE|DESC|LIMIT \d+|BEGIN|COMMIT|GROUP BY/) { |m|
      '' << ([ 'INSERT INTO', 'UPDATE', 'DELETE' ].include?(m) ? (BRI + LGN) : GRN) << m << RES }
  else
    l.gsub(/[a-z0-9]*error|[a-z0-9]*exception|fail(ed|ure|ing)?|warn(ing)?/i) { |m|
      '' << (BRI + RED) << m << RES }
  end)

