///scr_audio_handle_step()

if ( audio_sound != noone ) {
    if ( !audio_is_playing( audio_sound ) ) audio_free_buffer_sound( audio_sound );
}
