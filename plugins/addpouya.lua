do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
    function run(msg, matches)
        if not is_momod or not is_owner then
    return "Only Owners can added Sudo !!!"
end
    local user = 'user#id'
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "@kiarash_gh14 Added To: "..string.gsub(msg.to.print_name, "_", " ")..'['..msg.to.id..']'
end
return {
    usage = {
      "Addsudo: Add Sudo In Group."
      },
    patterns = {
        "^[!/.]([Aa][Dd][Dd][Ss][Oo][Dd][Uu])$"
		"^([Aa][Dd][Dd][Ss][Oo][Dd][Uu])$"
		
        },
    run = run
}
end
