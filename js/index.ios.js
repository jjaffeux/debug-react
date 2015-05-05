'use strict';

var React = require('react-native');

var {
  AppRegistry,
  StyleSheet,
  Text,
  View
} = React;

var createReactIOSNativeComponentClass = require('createReactIOSNativeComponentClass');

var MyCustomView = createReactIOSNativeComponentClass({
  validAttributes: {on: true},
  uiViewClassName: 'MyCustomView',
})

var DebugReact = React.createClass({  
  render: function() {
    return (
      <View style={styles.container}>
        <Text style={styles.intro}>
          DebugReact
        </Text>
        <MyCustomView style={{backgroundColor: 'blue', width: 200, height: 200}} on={false}/>
      </View>
    );
  }
});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'stretch'
  },
  intro: {
    fontSize: 20,
    textAlign: 'center',
    margin: 50,
  },
});

AppRegistry.registerComponent('DebugReact', () => DebugReact);
