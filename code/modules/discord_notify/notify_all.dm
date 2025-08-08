SUBSYSTEM_DEF(discord_notify)
    name = "Notifier"
    wait = 3000
    init_order = INIT_ORDER_DEFAULT

/datum/controller/subsystem/discord_notify/Initialize(start_timeofday)
    if(!CONFIG_GET(flag/hub))
        can_fire = 0
        return ..()
    var/webhook = CONFIG_GET(string/webhook_roundstart)
    if(webhook)
        var/datum/http_request/R = new()
        R.prepare(RUSTG_HTTP_METHOD_POST, webhook, "{\"content\":\"<@&1254782534626312203>\\n\",\"embeds\":[{\"title\":\"Round [GLOB.rogue_round_id] is starting soon!!\",\"description\":\"\",\"color\":16711680}]}",
            list("Content-Type" = "application/json"), "")
        R.begin_async()
    can_fire = 0
    return ..()
