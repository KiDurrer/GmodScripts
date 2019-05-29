net.AddNetworkMessage("adminmenuNet")

hook.Add("PlayerSay", "Test", function(ply, text, boolteam)
	if string.sub(string.lower(text), 1, 10) == "!adminmenu"
		if ply:isAdmin() or ply:IsSuperAdmin() then
			net.Start("adminmenuNet")
			net.Send(ply)
			return "loaded"
		end
		return "Not an admin."
	end
end)
