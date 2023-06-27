import React from 'react'
import { StyleSheet } from 'react-native'
import { Text } from 'react-native-paper'

export default function Header(props) {
  return <Text style={styles.header} {...props} />
}

const styles = StyleSheet.create({
  header: {
    fontSize: 25,
    color: '#f59842',
    fontWeight: 'bold',
    paddingVertical: 12,
  },
})
