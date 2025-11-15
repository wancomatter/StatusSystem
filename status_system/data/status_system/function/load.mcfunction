# データパックが初期化されていない場合、初期化実行
    execute unless data storage status_system: initialized run schedule function status_system:initialize 2t replace
