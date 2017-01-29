///scr_audio_handle_async()

var _buffer  = async_load[? "buffer_id" ];
var _channel = async_load[? "channel_index" ];
var _length  = async_load[? "data_len" ];

audio_length = _length;
buffer_copy( _buffer, 0, _length, buf_audio_snapshot, 0 );
buffer_copy( _buffer, 0, _length, buf_audio, audio_offset );
audio_offset += _length;
