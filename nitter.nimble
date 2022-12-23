# Package

version       = "0.2.0"
author        = "zedeus"
description   = "An alternative front-end for Twitter"
license       = "AGPL-3.0"
srcDir        = "src"
bin           = @["nitter"]


# Dependencies

requires "nim >= 1.5.8"
requires "https://github.com/r3g-5z/jester#b587de9"
requires "karax#45bac6b"
requires "sass#7dfdd03"
requires "nimcrypto#24e006d"
requires "markdown#158efe3"
requires "packedjson#9e6fbb6"
requires "supersnappy#6c94198"
requires "https://github.com/r3g-5z/redpool#3c598e7"
requires "https://github.com/r3g-5z/redis#fb342e4"
requires "zippy#7628a30"
requires "flatty#9f885d7"
requires "jsony#d0e69bd"


# Tasks

task scss, "Generate css":
  exec "nimble c --hint[Processing]:off -d:danger -r tools/gencss"

task md, "Render md":
  exec "nimble c --hint[Processing]:off -d:danger -r tools/rendermd"
