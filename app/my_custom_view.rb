class MyCustomView < UIView
  def on=(on)
    p "CALLING on=(on) on MyCustomView"
    if on == 'on'
      #...
    end
  end
end
