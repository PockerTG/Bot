local function run(msg, matches)
if matches[1]:lower() == "payping" then
if tonumber(matches[2]) < 1000 or tonumber(matches[2]) > 900000 then
return "`خطا‼ مبلغ وارد شده باید`  *[1 تا 900]*  `هزار تومان باشد`"
end
    texth = "پرداخت مبلغ "..matches[2].." تومان به "..paypingname..""
local function payping(TM, MR)
      if MR.results_ and MR.results_[0] then
tdcli.sendInlineQueryResultMessage(msg.to.id, 0, 0, 1, MR.inline_query_id_, MR.results_[0].id_, dl_cb, nil)
    else
       text = "`Bold is offline`"
  return tdcli.sendMessage(msg.to.id, msg.id, 0, text, 0, "html")
   end
end
tdcli.getInlineQueryResults(107705060, msg.to.id, 0, 0, "[ "..texth.."](https://www.payping.ir/"..paypinglink.."/"..matches[2]..")", 0, payping, nil)
end
end

return {
patterns ={
"^[#!/]([Pp]ayping) (%d+)$",
"^([Pp]ayping) (%d+)$",
},
run=run,
}
