/// @description play background music

// Create an audio emmitter
audio_em = audio_emitter_create();
// Play at full volume
audio_emitter_gain(audio_em, 1);
// give it high priority
audio_play_sound_on(audio_em, snd_title, true, 10);
