net.Receive("adminmenuNet", function()
	local ply = LocalPlayer()
	local frame = vgui.Create("DFrame")
	frame:SetSize(400,400)
	frame:Center()
	frame:SetTitle("Admin-Panel - "..ply:Nick())
	
	local button1 = vgui.Create("DButton" frame)
end)
