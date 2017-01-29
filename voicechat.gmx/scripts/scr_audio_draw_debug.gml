///scr_audio_draw_debug()

var _recorders = audio_get_recorder_count();
var _map = audio_get_recorder_info( 0 );

draw_text( 5,  5, _map[? "name" ] );
draw_text( 5, 25, string( audio_length ) + " / " + string( audio_offset ) + ":" + string( audio_buffer_size ) );

buffer_seek( buf_audio_snapshot, buffer_seek_start, 0 );

var _i = 0;
var _divisor = 1 / (1<<16);
repeat( 2400 ) {
    _i += 0.5;
    var _value = buffer_read( buf_audio_snapshot, buffer_s16 );
    draw_point( _i, room_height*( _value * _divisor + 0.5 ) );
}
