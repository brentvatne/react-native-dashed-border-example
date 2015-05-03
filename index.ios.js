var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  requireNativeComponent,
} = React;

var DashedBorderView = React.createClass({
  render() {
    return <BVDashedBorderView {...this.props} />;
  }
});

var BVDashedBorderView = requireNativeComponent('BVDashedBorderView', DashedBorderView);

var DashedBorderExample = React.createClass({
  render: function() {
    return (
      <DashedBorderView style={{width: 200, height: 200, backgroundColor: '#cccccc', margin: 85}} />
    );
  }
});

AppRegistry.registerComponent('DashedBorderExample', () => DashedBorderExample);
