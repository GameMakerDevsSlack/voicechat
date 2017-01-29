///scr_playback_handle_step()

if ( playback_sound != noone ) {
    
    if ( !audio_is_playing( playback_sound ) ) {
        
        buffer_delete( ds_map_find_value( ds_list_find_value( playback_list, 0 ), "buffer" ) );
        audio_free_buffer_sound( playback_sound );
        ds_list_delete( playback_list, 0 );
        
        var _map = playback_list[| 0 ];
        playback_sound    = _map[? "sound" ];
        playback_started  = current_time;
        playback_duration = _map[? "duration" ];
        audio_play_sound( _map[? "sound" ], 1, false );
        
    }
    
}
