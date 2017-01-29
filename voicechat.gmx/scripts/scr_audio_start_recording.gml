///scr_audio_start_recording()

audio_get_recorder_count();
audio_start_recording( 0 );

audio_buffer_size = 32000 * 0.5;
buf_audio = buffer_create( audio_buffer_size, buffer_fixed, 1 );

buf_audio_snapshot = buffer_create( 4800, buffer_fixed, 1 );

audio_length = 0;
audio_offset = 0;
audio_sound = noone;
