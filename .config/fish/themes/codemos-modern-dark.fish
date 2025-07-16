# COLORS
set -x LC 333333
set -x LQ 444444
set -x HC cccccc
set -x HQ bbbbbb

set -x DEF_BROWN CB8569
set -x DEF_RED EF6363
set -x DEF_ORANGE D28342
set -x DEF_YELLOW BFAf40
set -x DEF_GREEN 45AA41
set -x DEF_MINT 46A598
set -x DEF_BLUE 4B9ECD
set -x DEF_PURPLE 9B87EA
set -x DEF_PINK ED63BA

set -x ALT_RED D19797
set -x ALT_ORANGE C59E7F
set -x ALT_YELLOW ADA77F
set -x ALT_GREEN 80B27F
set -x ALT_MINT 83AEA8
set -x ALT_BLUE 87ABC0
set -x ALT_PURPLE A9A0CB
set -x ALT_PINK CD95B8

set -x LC_BROWN 492F25
set -x LC_MINT 303F3D

# THEME
set -U fish_color_normal $HC
set -U fish_color_command $DEF_YELLOW
set -U fish_color_keyword $DEF_PINK
set -U fish_color_quote $DEF_BROWN
set -U fish_color_redirection $DEF_BLUE
set -U fish_color_end $ALT_PINK
set -U fish_color_error $DEF_RED
set -U fish_color_param $DEF_ORANGE
set -U fish_color_valid_path $ALT_BLUE --underline
set -U fish_color_option $ALT_ORANGE
set -U fish_color_comment $DEF_GREEN
set -U fish_color_selection $HC --bold --background=$LC
set -U fish_color_operator $ALT_ORANGE
set -U fish_color_escape $DEF_RED
set -U fish_color_autosuggestion $LQ
set -U fish_color_cwd $ALT_BLUE
set -U fish_color_cwd_root $ALT_BLUE --bold
set -U fish_color_user $ALT_PURPLE
set -U fish_color_host $DEF_PURPLE
set -U fish_color_host_remote $DEF_MINT
set -U fish_color_status $DEF_RED
set -U fish_color_cancel $ALT_RED
set -U fish_color_match --background=$LC_BROWN
set -U fish_color_search_match --background=$LC_MINT
set -U fish_color_history_current $ALT_BLUE --bold

set -U fish_pager_color_progress $DEF_BLUE
set -U fish_pager_color_background
set -U fish_pager_color_prefix $DEF_MINT --bold
set -U fish_pager_color_completion $ALT_MINT
set -U fish_pager_color_description $ALT_GREEN

set -U fish_pager_color_selected_background --background=$LC
set -U fish_pager_color_selected_prefix $DEF_MINT --bold
set -U fish_pager_color_selected_completion $ALT_MINT
set -U fish_pager_color_selected_description $ALT_GREEN

set -U fish_pager_color_secondary_background
set -U fish_pager_color_secondary_prefix $DEF_MINT --bold
set -U fish_pager_color_secondary_completion $ALT_MINT
set -U fish_pager_color_secondary_description $ALT_GREEN
