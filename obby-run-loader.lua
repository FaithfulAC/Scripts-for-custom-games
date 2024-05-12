local data = game:HttpGet("https://raw.githubusercontent.com/FaithfulAC/Scripts-for-custom-games/main/obby-run-main.lua")

loadstring(data)()
queue_on_teleport(data .. '\nloadstring(game:HttpGet("https://raw.githubusercontent.com/FaithfulAC/Scripts-for-custom-games/main/obby-run-loader.lua"))()')
