with_fx :echo do
  define :melody do
    use_synth :dsaw
    use_synth_defaults attack: 0,
      decay: 0, amp: 0.4, sustain: 0.3, release: 0
    play :c4
    sleep 0.25
    play :e4
    sleep 0.25
    play :g4
    sleep 0.25
    play :b4
    sleep 0.25
    
    play :c5
    sleep 0.25
    play :b4
    sleep 0.25
    play :g4
    sleep 0.25
    play :e4
    sleep 0.25
  end
  define :verse1bass do
    use_synth :saw
    use_synth_defaults amp: 1
    play :c1, sustain: 6
    play :c2, sustain: 6
    sleep 7
    play :d1, sustain: 1
    play :d2, sustain: 1
    sleep 1
    play :e1, sustain: 6
    play :e2, sustain: 6
    sleep 7
    play :d1, sustain: 1
    play :d2, sustain: 1
    sleep 1
  end
  define :verse2bass1 do
    play :c2
    sleep 0.25
    play :g2
    sleep 0.25
    play :c3
    sleep 0.25
    play :e3
    sleep 0.25
    play :g3
    sleep 1
  end
  define :verse2bass2 do
    play :c2
    sleep 0.25
    play :g2
    sleep 0.25
    play :c3
    sleep 0.5
    
    play :d2
    sleep 0.25
    play :a2
    sleep 0.25
    play :d3
    sleep 0.5
  end
end
live_loop :mel do
  play melody
end
2.times do
  play verse1bass
end
3.times do
  play verse2bass1
end
2.times do
  play verse2bass2
end
