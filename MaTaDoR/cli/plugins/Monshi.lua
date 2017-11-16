local function run(msg, matches) 
local uk = redis:get(msg.from.id..'chkusermonshi'..msg.to.id)
local monshi = MaTaDoR_sudo
if matches[1]:lower() == "setpm" and is_sudo(msg) then 
local pm = matches[2] 
redis:set('bot:pm',pm) 
return '`متن پاسخ گویی ثبت شد`' 
end 

if matches[1] == "pm" and is_sudo(msg) then
local hash = ('bot:pm') 
    local pm = redis:get(hash) 
    if not pm then 
    return '`ثبت نشده`' 
    else 
	   return tdcli.sendMessage(msg.chat_id_ , 0, 1, '*پیغام کنونی منشی:*\n\n'..check_markdown(pm), 0, 'md')
    end
end

if matches[1]:lower() == "monshi" and is_sudo(msg) then 
if matches[2]=="on"then 
redis:set("bot:pm", "no pm")
return "`منشی فعال شد لطفا دوباره پیغام را تنظیم کنید`" 
end 
if matches[2]=="off"then 
redis:del("bot:pm")
return "`منشی غیرفعال شد`" 
end
 end
if gp_type(msg.chat_id_) == "pv" and   msg.content_.text_ then
    local hash = ('bot:pm') 
    local pm = redis:get(hash)
if gp_type(msg.chat_id_) == "channel" or gp_type(msg.chat_id_) == "chat" then
return
else
tdcli.sendMessage(msg.chat_id_ , 0, 1, check_markdown(pm), 0, 'md')
tdcli.sendMessage(monshi , 0, 1,"*پیام :*\n"..check_markdown(msg.content_.text_).."\n*آیدی فرستنده :*\n`"..msg.sender_user_id_.."`", 0, 'md')
end 
end
end
return { 
patterns ={ 
"^[!#/](setpm) (.*)$", 
"^[!#/](monshi) (on)$", 
"^[!#/](monshi) (off)$", 
"^[!#/](pm)$",
"^([Ss]etpm) (.*)$", 
"^([Mm]onshi) (on)$", 
"^([Mm]onshi) (off)$", 
"^([Pp]m)$",
"^(.*)$", 
}, 
run = run 
}