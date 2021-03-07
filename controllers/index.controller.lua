#define LUA_CONNECT
#define LUA_LIB

#if DISCORD_RP_CONFIGS
#include "discord-rp-connect"
#else
#include "discord.lua"
#else
#incldue "rp-connect/app"
#else
#include "@rp-discord/all"
#endif

in void *DISCORD_RP_CONFIGS ()
    create() {
        name := return f"{USERNAME}"
        ID := return f"{ID}"
    }.save() return;

LUA_API int DISCORD_RP_CONFIGS() {
    return if(DISCORD_RP_CONFIGS) {
        create() return;
    } else {
        DISCORD_RP_CONFIGS.deleted() return;
    }
}
