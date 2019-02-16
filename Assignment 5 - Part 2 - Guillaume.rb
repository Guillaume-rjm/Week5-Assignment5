
notes = (scale :d3, :major_pentatonic, num_octaves: 3)


4.times do
  sample :loop_industrial, beat_stretch:1, rate: 1
  sleep 1
end

1.times do
  with_fx :reverb do
    use_synth :prophet
    play :fs5
    sleep 0.5
    play :fs5
    sleep 0.5
    play :g5
    sleep 0.5
    play :a5
    sleep 0.5
    play :a5
    sleep 0.5
    play :g5
    sleep 0.5
    play :fs5
    sleep 0.5
    play :e5
    sleep 0.5
    play :d5
    sleep 0.5
    play :d5
    sleep 0.5
    play :e5
    sleep 0.5
    play :fs5
    sleep 0.5
    play :fs5
    sleep 0.75
    play :e5
    sleep 0.25
    play :e5
    sleep 1
    
    in_thread do
      7.times do
        sample :loop_industrial, beat_stretch:1, rate: 1
        sleep 1
      end
    end
  end
  
  in_thread do
    play :fs5
    sleep 0.5
    play :fs5
    sleep 0.5
    play :g5
    sleep 0.5
    play :a5
    sleep 0.5
    play :a5
    sleep 0.5
    play :g5
    sleep 0.5
    play :fs5
    sleep 0.5
    play :e5
    sleep 0.5
    play :d5
    sleep 0.5
    play :d5
    sleep 0.5
    play :e5
    sleep 0.5
    play :fs5
    sleep 0.5
    play :e5
    sleep 0.75
    play :d5
    sleep 0.25
    play :d5
    sleep 1
  end
end
sleep 8

in_thread do
  
  1.times do
    use_synth :dark_ambience
    play :e5, amp: 15, cutoff: 130
    sleep 0.5
    play :e5, amp: 15, cutoff: 125
    sleep 0.5
    play :fs5, amp: 15, cutoff: 120
    sleep 0.5
    play :d5, amp: 15, cutoff: 115
    sleep 0.5
    play :e5, amp: 15, cutoff: 117
    sleep 0.5
    play :fs5, amp: 15, cutoff: 122
    sleep 0.25
    play :g5, amp: 15, cutoff: 126
    sleep 0.25
    play :fs5, amp: 15, cutoff: 130
    sleep 0.5
    play :d5, amp: 15, cutoff: 130
    sleep 0.5
    play :e5, amp: 15, cutoff: 110
    sleep 0.5
    play :fs5, amp: 15, cutoff: 120
    sleep 0.25
    play :g5, amp: 15, cutoff: 90
    sleep 0.25
    play :fs5, amp: 15, cutoff: 100
    sleep 0.5
    play :e5, amp: 15, cutoff: 95
    sleep 0.5
    play :d5, amp: 15, cutoff: 130
    sleep 0.5
    play :e5, amp: 15, cutoff: 110
    sleep 0.5
    play :a4, amp: 15, cutoff: 100
    sleep 0.5
    play :a4 , amp: 15, cutoff: 95
    sleep 0.5
    
  end
end

in_thread do
  14.times do
    sample :loop_industrial, beat_stretch:1, rate: 1
    2.times do
      sample :elec_blip, rate: 2
      play notes.choose, amp:0.4, pan: rand
      sleep 0.25
    end
  end
  
end

sleep 8

in_thread do
  
  1.times do
    with_fx :reverb do
      use_synth :supersaw
      play :fs5
      sleep 0.5
      play :fs5
      sleep 0.5
      play :g5
      sleep 0.5
      play :a5
      sleep 0.5
      play :a5
      sleep 0.5
      play :g5
      sleep 0.5
      play :fs5
      sleep 0.5
      play :e5
      sleep 0.5
      play :d5
      sleep 0.5
      play :d5
      sleep 0.5
      play :e5
      sleep 0.5
      play :fs5
      sleep 0.5
      play :e5
      sleep 0.75
      play :d5
      sleep 0.25
      play :d5
      sleep 1
    end
  end
end

in_thread do
  with_fx :reverb do
    with_fx :flanger do
      use_synth :hoover
      play chord(:D3, :major), release: 2, pan:-1
      use_synth :tech_saws
      play chord(:D3, :major), release: 2, pan:1
      sleep 2
      use_synth :hoover
      play chord(:G3, :major), release: 2, pan:-1
      use_synth :tech_saws
      play chord(:G3, :major), release: 2, pan:1
      sleep 2
      use_synth :hoover
      play chord(:A3, :dom7), release: 2, pan:-1
      use_synth :tech_saws
      play chord(:A3, :dom7), release: 2, pan:1
      sleep 2
      use_synth :hoover
      play chord(:D3, :major), release: 2, pan:-1
      use_synth :tech_saws
      play chord(:D3, :major), release: 2, pan:1
    end
  end
end

in_thread do
  7.times do
    sample :loop_industrial, beat_stretch:1, rate: 0.5
    sleep 1
  end
end

