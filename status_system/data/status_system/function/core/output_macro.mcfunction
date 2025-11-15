# 諸々の増加量を反映した最終ステータスを更新する
    function status_system:core/total/

# 情報出力
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.$(id) set from storage status_system: Temporary
