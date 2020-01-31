luke="C:/Users/valeria_munoz/Downloads/The_Imperial_March/Imperial_Samples/luke_fatherd.wav"
noise="C:/Users/valeria_munoz/Downloads/The_Imperial_March/Imperial_Samples/noise.wav"
darth="C:/Users/valeria_munoz/Downloads/The_Imperial_March/Imperial_Samples/sound.wav"


use_synth  :blade
use_bpm 50
sample luke, amp:3
sleep 56

live_loop :noisee do
  32.times do
    sample noise, rate: 0.1
    sleep 1
  end
  stop
end

live_loop :imperial do
  2.times do
    3.times do
      play:G4, rate:3
      sleep 1
    end
    play:E4
    sleep 0.75
    play:Bb4
    sleep 0.25
    
    play:G4
    sleep 1
    play:E4
    sleep 0.75
    play:Bb4
    sleep 0.25
    play:G4
    sleep 2
    
    3.times do
      play:D5
      sleep 1
    end
    play:Eb5
    sleep 0.75
    play:Bb4
    sleep 0.25
    
    play:Gb4
    sleep 1
    play:E4
    sleep 0.75
    play:Bb4
    sleep 0.25
    play:Gb4
  end
  stop
end

sleep 24

x = 1
live_loop :Darthv do
  10.times do
    sample darth ,  amp: x
    sleep 1.5
    x = x - 0.1
    print x
  end
  x = 1
  stop
end
