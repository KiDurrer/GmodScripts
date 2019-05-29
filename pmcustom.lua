-- File in the server autorun
net.AddNetworkMessage("pmcustom")

hook.Add("PlayerSay","NetworkTest, function(ply, test, boolT)
  if(string.sub(string.lower(text), 1, 3) == "!pm") then
    local isFound = false
    local messageTable = string.Split(string.lower(text), " ")
    local message = string.sub(text, string.len(messageTable[2])+4) or " "
    for k, v in pairs( player.GetAll() ) do
      if string.find(string.lower(v:Nick()), messageTable[2]) ) then
        net.Start("pmcustom")
          net.WriteString(ply:Nick())
          net.WriteString(message)
        net.Send(v)
        isFound = true
        ply:ChatPrint("pm sent to "..v:Nick())
        return ""
      end 
    end
    if isFound == false then
      ply:ChatPrint("Player not found")
      return ""
    end
  end
end)

-- File in the client autorun

net.Receive("pmcustom", function(len)
  local ply = LocalPlayer()
  local sender = net.ReadString()
  local message = net.ReadString()
  ply:ChatPrint()
end)
