class MyCustomViewManager < RCTViewManager
  # We should call those two macros :
  # source : http://facebook.github.io/react-native/docs/nativemodulesios.html#content

  # code https://github.com/facebook/react-native/blob/master/React/Base/RCTBridgeModule.h#L50
  # RCT_EXPORT_MODULE();

  # code https://github.com/facebook/react-native/blob/master/React/Views/RCTViewManager.h#L103
  # RCT_EXPORT_VIEW_PROPERTY(on, BOOL)

  def view
    MyCustomView.alloc.initWithFrame(CGRectMake(0, 0, 200, 200))
  end
end
