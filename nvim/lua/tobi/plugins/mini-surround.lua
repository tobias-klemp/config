return {
  "echasnovski/mini.surround",
  opts = {
    mappings = {
      add = "gza",
      delete = "gzd",
      replace = "gzr",
    },
    custom_surroundings = {
      ["("] = { output = { left = "(", right = ")" } },
      ["["] = { output = { left = "[", right = "]" } },
      ["{"] = { output = { left = "{", right = "}" } },
      ["b"] = { output = { left = "{{ ", right = " }}" } },
      ["<"] = { output = { left = "<", right = ">" } },
      ["l"] = { output = { left = "console.log(", right = ")" } },
      ["d"] = { output = { left = "<div>\n", right = "\n</div>" } },
      ["s"] = { output = { left = "<span>\n", right = "\n</span>" } },
    },
  },
}
