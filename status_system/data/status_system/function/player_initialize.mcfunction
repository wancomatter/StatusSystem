# ステータスシステムの導入に成功していないならrevoke
    execute unless data storage status_system: initialized run return run advancement revoke @s only status_system:player_initialize

# ステータスシステム動かす用のタグを付与
    tag @s add StatusSystem.TickingEntity

# サンプルステータス適用
    function #status_system:player_base_status
