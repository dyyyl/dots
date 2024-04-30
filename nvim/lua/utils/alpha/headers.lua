-- Create headers.
local earth = {
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣄⣠⣀⡀⣀⣠⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⢠⣠⣼⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⢠⣤⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣟⣾⣿⣽⣿⣿⣅⠈⠉⠻⣿⣿⣿⣿⣿⡿⠇⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⢀⡶⠒⢉⡀⢠⣤⣶⣶⣿⣷⣆⣀⡀⠀⢲⣖⠒⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⢀⣤⣾⣶⣦⣤⣤⣶⣿⣿⣿⣿⣿⣿⣽⡿⠻⣷⣀⠀⢻⣿⣿⣿⡿⠟⠀⠀⠀⠀⠀⠀⣤⣶⣶⣤⣀⣀⣬⣷⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣦⣼⣀⠀ ]], -- Peach
  [[  ⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠓⣿⣿⠟⠁⠘⣿⡟⠁⠀⠘⠛⠁⠀⠀⢠⣾⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠏⠙⠁ ]], -- Peach
  [[  ⠀⠸⠟⠋⠀⠈⠙⣿⣿⣿⣿⣿⣿⣷⣦⡄⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣆⢘⣿⣯⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡉⠉⢱⡿⠀⠀⠀⠀⠀ ]], -- Peach
  [[  ⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡿⠦⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡗⠀⠈⠀⠀⠀⠀⠀⠀ ]], -- Yellow
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣉⣿⡿⢿⢷⣾⣾⣿⣞⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⣠⠟⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Yellow
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⠿⠿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣾⣿⣿⣷⣦⣶⣦⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠈⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Green
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣤⡖⠛⠶⠤⡀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠙⣿⣿⠿⢻⣿⣿⡿⠋⢩⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Green
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠧⣤⣦⣤⣄⡀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠘⣧⠀⠈⣹⡻⠇⢀⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Sky
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣤⣀⡀⠀⠀⠀⠀⠀⠀⠈⢽⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⣴⣿⣷⢲⣦⣤⡀⢀⡀⠀⠀⠀⠀⠀⠀ ]], -- Sky
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣷⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠂⠛⣆⣤⡜⣟⠋⠙⠂⠀⠀⠀⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⠉⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣾⣿⣿⣿⣿⣆⠀⠰⠄⠀⠉⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⠿⠿⣿⣿⣿⠇⠀⠀⢀⠀⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡇⠀⠀⢀⣼⠗⠀⠀ ]], -- Mauve
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠃⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠁⠀⠀⠀ ]], -- Mauve
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Mauve
}

local text = {
  [[        ███╗   ███╗ █████╗ ██╗  ██╗███████╗       ]], -- Red
  [[        ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝       ]], -- Red
  [[        ██╔████╔██║███████║█████╔╝ █████╗         ]], -- peach
  [[        ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝         ]], -- Peach
  [[        ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗       ]], -- Yellow
  [[        ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝       ]], -- Yellow
  [[                                                  ]], -- overlay0
  [[                                                  ]], -- overlay0
  [[           ██████╗ ██████╗  ██████╗ ██╗           ]], -- Yellow
  [[          ██╔════╝██╔═══██╗██╔═══██╗██║           ]], -- Yellow
  [[          ██║     ██║   ██║██║   ██║██║           ]], -- Green
  [[          ██║     ██║   ██║██║   ██║██║           ]], -- Green
  [[          ╚██████╗╚██████╔╝╚██████╔╝███████╗      ]], -- Sky
  [[           ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝      ]], -- Sky
  [[                                                  ]], -- overlay0
  [[                                                  ]], -- overlay0
  [[      ███████╗████████╗██╗   ██╗███████╗███████╗  ]], -- Sky
  [[      ██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝  ]], -- Sky
  [[      ███████╗   ██║   ██║   ██║█████╗  █████╗    ]], -- Blue
  [[      ╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝    ]], -- Blue
  [[      ███████║   ██║   ╚██████╔╝██║     ██║       ]], -- Mauve
  [[      ╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝       ]], -- Mauve
}

local plus_ultra = { -- 21 is divisible by 3, so we can give each color 3 lines.
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣀⣂⡄⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⣠⣶⢮⣷⢿⣻⣟⡿⣻⡿⣶⢶⣔⣄⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢠⣄⣴⣴⡿⣽⡟⠾⠛⠉⠁⠀⣿⣷⠀⠈⠉⠛⢯⣟⣿⣳⣦⣦⣢⣀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⢤⣠⣤⣶⡿⣿⣻⠏⠓⠉⠀⠀⠀⠀⠀⠀⠀⣿⣞⠀⠀⠀⠀⢸⣟⡇⠉⠑⠻⠿⣽⡷⣷⣤⣦⡄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⣢⣼⡷⣿⡻⠿⠙⠉⣿⡗⠁⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣿⢾⠀⠀⠀⠀⢸⡿⡇⠀⠀⠀⠀⣷⠈⠉⠛⠽⢿⢿⡾⣶⣔⣄⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣄⣤⣴⣾⣻⠯⠟⣷⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣤⣶⡾⣟⣿⣽⢾⣿⠀⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡿⡍⠓⠻⠽⣿⣻⢦⣦⣠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣰⣦⣾⣟⣯⡿⣽⠉⠁⠀⠀ ⣿⢿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⣷⡟⠿⠷⣯⡿⣾⠀⠀⠀⠀⢸⣷⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⣟⡇⠀⠀⠀⠀⠉⠙⠋⢿⢿⡷⣷⡵⣴⡀⡀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⠀⠀⠀⠀⢀⡀⣄⣤⣶⣶⢿⠽⠛⠓⠉⢠⣿⡽⣿⠀⠀⠀⠀ ⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠘⣿⣽⠀⠀⠀⠀⢸⣯⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⣯⣇⡀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠉⠛⠻⠟⣿⣶⢾⣄⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[  ⠀⠀⠀⢠⣀⣤⣷⢾⡻⠿⠙⠚⠋⣷⠀⠀⠀⠀⢸⣯⢿⣳⠀⠀⠀⠀ ⣯⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢾⠀⠀⠀⠀⢸⣟⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡷⣯⢿⡇⠀⠀⠀⢀⡀⢸⠀⠀⠀⠀⠀⠀⠀⠙⣯⣟⠯⣿⣷⣞⣦⣄⣀⠀⠀⠀ ]],
  [[  ⢠⣵⡿⠟⠏⠛⠈⠁⠀⠀⠀⠀⠀⣻⠀⠀⠀⠀⢸⣟⣿⣻⠀⠀⠀⠀ ⣿⢿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣻⠀⠀⠀⠀⢸⡿⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡿⣽⣯⡇⠀⠀⠀⢸⣿⢿⠀⠀⠀⢀⡀⠀⠀⠀⢸⡇⠀⠀⠈⠉⠚⠻⣿⢷⣯⠆ ]],
  [[  ⢸⣷⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⢸⣟⣾⣽⠀⠀⠀⠀ ⣿⣿⠀⠀⠀⠀⠀⣿⣧⣀⣀⣠⣤⣶⠀⠀⠀⠀⠀⠀⣿⣽⠀⠀⠀⠀⢸⡿⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡿⣽⣞⡇⠀⠀⠀⢸⣿⣻⠀⠀⠀⢸⣿⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠘⣿⢾⡃ ]],
  [[  ⢸⣿⢾⠀⠀⠀⠀⣶⣶⠀⠀⠀⠀⢸⠀⠀⠀⠀⢸⣟⣾⣽⠀⠀⠀⠀ ⣯⣿⠀⠀⠀⠀⠀⣿⣷⣻⣽⢯⡿⡽⠀⠀⠀⠀⠀⠀⣿⣝⠀⠀⠀⠀⠘⣿⠇⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡿⣽⢯⡇⠀⠀⠀⢸⣿⣽⠀⠀⠀⠘⠟⠀⠀⠀⢸⡇⠀⠀⢠⣆⠀⠀⠀⣿⣻⡇ ]],
  [[  ⢸⣿⡿⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⢸⠀⠀⠀⠀⢸⣟⣾⣽⠀⠀⠀⠀ ⣿⢿⠀⠀⠀⠀⠀⣿⡷⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⢸⡿⣽⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⣟⣯⣿⡃⠀⠀⠀⢸⣿⢾⠀⠀⠀⠀⠀⠀⠀⢀⣼⡇⠀⠀⢸⣿⠀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣯⣿⠀⠀⠀⠀⠛⠃⠀⠀⠀⠀⣾⠀⠀⠀⠀⢸⣟⣾⣽⠀⠀⠀⠀⠀⢿⠟⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣿⣻⣟⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠈⠉⠉⣷⡇⠀⠀⠀⢸⣿⣻⠀⠀⠀⢀⡀⠀⠀⠈⢿⡇⠀⠀⢸⣿⠀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣟⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠀⠀⠀⠀⢸⠿⠞⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡇⠀⠀⣀⣀⣤⣤⣶⡾⣟⡿⣞⡷⠿⣽⣻⢿⣳⣶⢦⣤⣄⣀⣀⣸⣿⠀⠀⠀⠀⠀⠀⢀⣿⡆⠀⠀⠀⢸⣿⣽⠀⠀⠀⢸⣿⠀⠀⠀⢸⡇⠀⠀⠘⠻⠀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣿⢯⠀⠀⠀⠀⣀⣠⣤⣶⡾⣟⣷⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣾⣟⣷⣻⢿⣻⠯⠻⠹⠞⠋⠉⠀⠁⠀⠀⠀⠀⠉⠉⠺⠟⠽⠾⣻⣟⣯⣷⢶⣦⣤⣄⣀⡀⢸⣷⡇⠀⠀⠀⢸⣿⢾⠀⠀⠀⢸⣿⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣿⡿⠀⠀⠀⠀⣿⢯⣷⢯⣟⡿⣽⠀⠀⠀⠀⠀⠀⠀⣿⣦⣄⣠⣤⣶⡶⣿⣟⢿⢽⡯⠷⠹⠈⠃⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠙⠉⠻⠚⢽⡯⢟⣿⣻⢷⣳⣦⣤⣄⣸⣿⣻⠀⠀⠀⢸⣿⠀⠀⠀⢸⡇⠀⠀⢠⣄⠀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣯⣿⠀⠀⠀⠀⣿⣻⡽⣟⣯⣿⣻⢀⣀⣠⣤⣴⣶⡾⣿⢽⢞⠟⠹⠞⠙⠃⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠘⠋⠹⠗⠫⠿⢽⣾⣻⢷⣶⣦⣬⣿⣄⡀⠀⠘⡇⠀⠀⢸⣿⠀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣯⣿ ⠀⠀ ⣻⣽⣟⣯⣷⢿⡽⡯⢟⠯⠯⠃⠙⠁⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠈⠋⠈⠷⠿⣾⢽⣻⢿⡷⣷⣦⣤⣼⣿⣀⠀⠀⣿⣳⡇ ]],
  [[  ⢸⣿⣾⣶⢾⣿⣻⢟⠗⠫⠋⠚⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠛⠑⠿⠙⢷⠯⣟⡿⣷⢯⣷⡃ ]],
  [[  ⠈⠛⠈⠉⠁⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠉⠓⠁ ]],
}

local pentagram = {
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣿⡿⠿⠟⠛⠛⠛⠉⠉⠉⠉⠙⠛⠛⠻⠿⠿⣿⣷⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⣿⠿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⢿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⡿⢿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Red
  [[  ⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠁⠀⢹⣿⡏⠛⢿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⡿⠟⢉⣿⡟⠀⠀⠙⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Peach
  [[  ⠀⠀⠀⠀⠀⠀⣰⣿⠟⠁⠀⠀⠀⠀⢿⣿⡀⠀⠉⠻⢿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⠟⠋⠀⠀⣼⣿⠃⠀⠀⠀⠀⠙⣿⣦⡀⠀⠀⠀⠀⠀⠀ ]], -- Peach
  [[  ⠀⠀⠀⠀⢀⣾⡿⠃⠀⠀⠀⠀⠀⠀⠘⣿⣇⠀⠀⠀⠀⠙⠻⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⠿⠋⠁⠀⠀⠀⢰⣿⡏⠀⠀⠀⠀⠀⠀⠈⢻⣷⡄⠀⠀⠀⠀⠀ ]], -- Peach
  [[  ⠀⠀⠀⢠⣾⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡄⠀⠀⠀⠀⠀⠈⠙⠿⣿⣦⣄⠀⠀⠀⠀⢀⣤⣾⡿⠛⠁⠀⠀⠀⠀⠀⢀⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣆⠀⠀⠀⠀ ]], -- Peach
  [[  ⠀⠀⢠⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣦⣤⣾⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣆⠀⠀⠀ ]], -- Peach
  [[  ⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣥⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡄⠀⠀ ]], -- Yellow
  [[  ⠀⣼⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡄⠀⠀⠀⠀⠀⣀⣴⣿⠿⠋⠁⠀⠙⠻⣿⣦⣄⠀⠀⠀⠀⠀⠀⣾⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⡀⠀ ]], -- Yellow
  [[  ⢠⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⠀⠀⢀⣤⣾⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣦⣄⠀⠀⣸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡇⠀ ]], -- Yellow
  [[  ⣸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣷⣾⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣷⣶⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠀ ]], -- Yellow
  [[  ⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⡏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡄ ]], -- Green
  [[  ⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⡿⠛⠉⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠏⠙⠿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇ ]], -- Green
  [[  ⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⡿⠛⠁⠀⠀⠀⠸⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡟⠀⠀⠀⠈⠙⠿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇ ]], -- Green
  [[  ⣿⣿⠀⠀⠀⠀⠀⠀⢀⣠⣾⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⢻⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠁⠀⠀⠀⠀⠀⠀⠈⠛⢿⣷⣦⡀⠀⠀⠀⠀⠀⠀⢸⣿⠃ ]], -- Green
  [[  ⢻⣿⠀⠀⠀⠀⣠⣴⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣷⣤⡀⠀⠀⠀⣼⣿⠀ ]], -- Green
  [[  ⠸⣿⣇⣠⣴⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣶⣄⣠⣿⡏⠀ ]], -- Sky
  [[  ⠀⢻⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾⣿⣿⣿⣿⠁⠀ ]], -- Sky
  [[  ⠀⠈⣿⣯⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⣿⣿⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣹⣿⠏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹⣿⠇⠀⠀ ]], -- Sky
  [[  ⠀⠀⠘⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠏⠀⠀⠀ ]], -- Sky
  [[  ⠀⠀⠀⠘⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⡀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠏⠀⠀⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠘⢿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣧⠀⠀⠀⠀⠀⠀⢰⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠋⠀⠀⠀⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠀⠈⠻⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡆⠀⠀⠀⠀⢀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠁⠀⠀⠀⠀⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠀⠀⠀⠘⢿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣷⠀⠀⠀⠀⣼⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Blue
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣇⠀⠀⢰⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Mauve
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡄⢀⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Mauve
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣷⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣼⣿⠃⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Mauve
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⣿⣷⣶⣤⣤⣄⣀⣀⣸⣿⣿⣏⣀⣀⣀⣤⣤⣶⣶⣿⠿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Mauve
  [[  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠿⠿⠿⠿⠿⠿⠟⠛⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]], -- Mauve
}

return {
  earth = earth,
  text = text,
  plus_ultra = plus_ultra,
  pentagram = pentagram,
}
