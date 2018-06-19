/**
* Sample React Native App
* https://github.com/facebook/react-native
* @flow
*/

import React, { Component } from 'react';

import {
  Platform,
  StyleSheet,
  Text,
  TextInput,
  View
} from 'react-native';

import Forecast from "./Forecast";

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

type Props = {};

export default class App extends Component<Props> {

  constructor(props){
    super(props);
    this.state = { zip: "", forecast: null };
    this.version = "0.9.9";
  }

  _handleTextChange = event => {
     let sWho = "WeatherProject/App.js::_handleTextChange";
     console.log( `${sWho}(): event.nativeEvent.text = ${event.nativeEvent.text}...` );
     this.setState({ zip: event.nativeEvent.text } );
  };

  render() {

    let content = null;

    if( this.state.forecast !== null ){
        content = (
            <Forecast main={this.state.forecast.main}
            description={this.state.forecast.description}
            temp={this.state.forecast.temp}
            />
        );
    }

    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to The Weather Project...version {this.version}
        </Text>
        {content}
        <TextInput style={styles.input}
                   onSubmitEditing={this._handleTextChange} />
        <Text style={styles.welcome}>
        {this.state.zip?"You inputted zip code = "+this.state.zip:"You did not input a zip code yet"}
        </Text>
        <Text style={styles.instructions}>
          To get started, edit App.js
        </Text>
        <Text style={styles.instructions}>
          {instructions}
        </Text>
      </View>
    );
  }

}/* export default class App extends Component<Props> */

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  input: {
    fontSize: 20,
    borderWidth: 2,
    height: 40
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    color: '#800080',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
