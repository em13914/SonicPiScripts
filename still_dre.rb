#https://musescore.com/user/36636114/scores/7349204

use_bpm 93
#dre = "C:/Users/ericm/Downloads/guess_whos_back.wav"

=begin
#fade out
sample dre, amp: 1
sleep 1
sample dre, amp: 0.5
sleep 1
sample dre, amp: 0.25
sleep 1
sample dre, amp: 0.125
sleep 1
=end

live_loop :still_dre_notes do
  use_synth :piano
  #measure 1 --> 4 BEATS
  8.times do
    play:a5
    play:e5
    play:c5
    sleep 0.5
  end
  #measure 2 --> 4 BEATS
  3.times do
    play:a5
    play:e5
    play:b4
    sleep 0.5
  end
  5.times do
    play:g5
    play:e5
    play:b4
    sleep 0.5
  end
end

#sleep 8

live_loop :bass_notes do
  use_synth :fm
  #measure 1 --> 4 BEATS
  play :a2, sustain: 2
  play :a3, sustain: 2
  sleep 3
  play :b2, sustain: 1
  play :b3, sustain: 1
  sleep 1
  #measure 2 --> 4 BEATS
  play :e2, sustain: 2
  play :e3, sustain: 2
  sleep 3
  play :e2, sustain: 1
  play :e3, sustain: 1
  sleep 1
end

#sleep 8

live_loop :drum_beat do
  sample :drum_cymbal_pedal, amp: 0.1
  sleep 0.25
  sample :drum_cymbal_pedal, amp: 0.15
  sleep 0.25
  sample :drum_cymbal_pedal, amp: 0.2
  sleep 0.25
  sample :drum_cymbal_pedal, amp: 0.25
  sleep 0.25
end
