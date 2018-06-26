import React, { Component } from "react";

import { StyleSheet, Text, View } from "react-native";

class Forecast extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.bigText}>
                {this.props.zip}: {this.props.main}
                </Text>
                <Text style={styles.mainText}>
                    Current Conditions:
                    {this.props.description}
                </Text>
                <Text style={styles.bigText}>
                    {this.props.temp} ° F
                </Text>
            </View>
        );
    }
}    

const styles = StyleSheet.create({
    container: { height: 130 },    
    bigText: {
        flex: 2,
        fontSize: 20,
        textAlign: "center",
        margin: 10,
        color: "#800080"
    },
    mainText: {
        flex: 1,
        fontSize: 16,
        textAlign: "center",
        color: "#FFA500"
    }
});

export default Forecast;
