///scr_playback_add_buffer( buffer )

var _src_buffer = argument0;

var _size = buffer_get_size( _src_buffer );
var _duration = _size / 32; //in ms

var _buffer = buffer_create( _size, buffer_fixed, 1 );
buffer_copy( _src_buffer, 0, _size,   _buffer, 0 );
var _sound = audio_create_buffer_sound( _buffer, buffer_s16, 32000, 0, _size/2, audio_mono );;

var _map = ds_map_create();
_map[? "index"    ] = playback_index;
_map[? "size"     ] = _size;
_map[? "duration" ] = _duration;
_map[? "buffer"   ] = _buffer;
_map[? "sound"    ] = _sound
playback_index++;

ds_list_add( playback_list, _map );
ds_list_mark_as_map( playback_list, ds_list_size( playback_list ) - 1 );

if ( ds_list_size( playback_list ) <= 1 ) {
    
    playback_sound    = _sound;
    playback_started  = current_time;
    playback_duration = _duration;
    audio_play_sound( playback_sound, 1, false );
    
}
