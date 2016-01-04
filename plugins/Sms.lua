local function run(msg, matches)
  if not is_sudo(msg) then -- For Sudoers only !
    return 'Sudoers Can Only use it sow fuckoff'
  end
	if matches[1] == 'Sms' and is_sudo(msg) then
		local response = matches[3]
		send_large_msg("user#id"..matches[2], response)
						local receiver = 'user#id'..user_id
				send_large_msg(receiver, response)
	end
	end
return {
  patterns = {
    "^[!/](Sms) (%d+) (.*)$"
  },
  run = run
}
