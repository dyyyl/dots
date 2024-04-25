-- Description: Dashboard plugin configs
return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function(_, opts)
    local logo = [[
      ███╗   ███╗ █████╗ ██╗  ██╗███████╗   
      ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   
      ██╔████╔██║███████║█████╔╝ █████╗     
      ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     
      ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   
      ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   


         ██████╗ ██████╗  ██████╗ ██╗        
        ██╔════╝██╔═══██╗██╔═══██╗██║        
        ██║     ██║   ██║██║   ██║██║        
        ██║     ██║   ██║██║   ██║██║        
        ╚██████╗╚██████╔╝╚██████╔╝███████╗   
         ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   


     ███████╗████████╗██╗   ██╗███████╗███████╗
     ██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝
     ███████╗   ██║   ██║   ██║█████╗  █████╗  
     ╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  
     ███████║   ██║   ╚██████╔╝██║     ██║     
     ╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     
    ]]

    logo = string.rep("\n", 10) .. logo .. "\n\n\n"
    opts.config.header = vim.split(logo, "\n")
  end,
}
