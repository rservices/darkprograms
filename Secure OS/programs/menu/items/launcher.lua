local programs = {
  {
    exec = "worm",
    icon = {"\141\136", "de", "ff"}
  },
  {
    exec = "paint image",
    icon = {"\152\135", "ce", "ff"}
  },
  {
    exec = "edit text",
    icon = {"ed", "44", "ff"}
  },
  {
    exec = "shell",
    icon = {">_", "40", "ff"}
  },
  {
    exec = "redirection",
    icon = {"\136\133", "b8", "77"}
  },
  {
    exec = "adventure",
    icon = {"?_", "40", "ff"}
  },
  {
    exec = "lua",
    icon = {"lu", "00", "ff"}
  },
  {
    exec = "chat join lost_chat "..os.getComputerID(),
    icon = {"\2\19", "00", "ff"}
  },
  {
    exec = "chat host lost_chat",
    icon = {"\16\19", "00", "ff"}
  }
}

return {
  w = #programs*3,
  update = function(event, var1, var2, var3)
    for programNum, program in ipairs(programs) do

      if event == "mouse_click" and var3 == 1 and (var2 == (programNum-1)*3+1 or var2 == (programNum-1)*3+2) then
        processes:run(program.exec)
      end
      term.blit(program.icon[1], program.icon[2], program.icon[3])
      term.write(" ")
    end
  end
}
