import React, { useState, useContext } from 'react'
import {
  View,
  Text,
  Image,
  StyleSheet,
  Button,
  ScrollView,
  TextInput,
} from 'react-native'
import { RadioButton } from 'react-native-paper';
import { AuthContext } from '../context/AuthContext'

export default function Payment({ navigation }) {
  const { carts, authState, setCarts } = useContext(AuthContext)
  const [ten, onChangeten] = React.useState('')
  const [diachi, onChangediachi] = React.useState('')
  const [checked, setChecked] = useState(null); // Initial checked option
  const [promotions, setPromotions] = React.useState([])
  const handleRadioButtonChange = (value) => {
    console.log(value)
    setChecked(value);
  };
  React.useEffect(() => {
    const myHeaders = new Headers()
    myHeaders.append('Content-Type', 'application/json')

    const raw = JSON.stringify({
      Id: authState.user['_W'],
    })

    const requestOptions = {
      method: 'POST',
      headers: myHeaders,
      body: raw,
      redirect: 'follow',
    }
    const token = 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqb2huLmRvZUBleGFtcGxlLmNvbSIsImlhdCI6MTY4NzcwNzM5NiwiZXhwIjoxNjg4NTcxMzk2fQ.LZACAn7n7VdqSHnElgFOBzI0D5v81_g5hF20TkiPMz9NM88wTDlenWGhFirEzjHtYSr27TBRPIcUyM4tkoZb3Q';

    fetch('http://10.0.2.2:8080/api/user', requestOptions)
      .then((response) => response.json())
      .then((result) => {
        console.log(result.data)
        onChangeten(result.data.FullName)
        onChangediachi(result.data.Address)
      })
      .catch((error) => console.log('error', error))
    fetch('http://10.0.2.2:8080/api/admin/promotions-for-order?price='+carts.reduce((a, b) => a + b.promotionPrice * b.quantity, 0).toString(), {
      method: 'GET',
      headers: {
        Authorization: `Bearer ${token}`,
      },
      redirect: 'follow',

    })
      .then((response) => response.json())
      .then((result) => {
        console.log(result.data)
        console.log("OKKKKKKKKKKK")
        setPromotions(result.data)
      })
      .catch((error) => console.log('error', error))
  }, [])
  const formatConcurrency = (number) => {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')
  }
  const getPromotionById = (promotionId) => {
    return promotions.find((promotion) => promotion.id === promotionId);
  };
  const renderList = () => {
    return carts.map((item, index) => (
      <View
        key={index}
        style={{
          padding: 10,
          margin: 10,
          backgroundColor: '#f0ebeb',
          display: 'flex',
          flexDirection: 'row',
        }}
      >
        <Image
          source={{
            uri: `http://10.0.2.2:8080/downloadFile/${item.image}`,
          }}
          style={{ width: 80, height: 80 }}
        />
        <View style={{ width: '80%', paddingHorizontal: 20 }}>
          <Text style={{ fontWeight: 'bold' }}>{item.name}</Text>
          <View
            style={{
              display: 'flex',
              flexDirection: 'row',
              justifyContent: 'space-between',
            }}
          >
            <Text>{formatConcurrency(item.promotionPrice)} VND</Text>
            <Text>x{item.quantity}</Text>
          </View>
        </View>
      </View>
    ))
  }
  return (
    <ScrollView>
      <View style={styles.container}>
        <Text
          style={{
            fontWeight: 'bold',
            fontSize: 20,
            borderBottomColor: 'black',
            borderBottomWidth: 1,
          }}
        >
          Món ăn:
        </Text>
        {renderList()}
      </View>
      <View style={styles.container}>
        <Text
          style={{
            fontWeight: 'bold',
            fontSize: 20,
            borderBottomColor: 'black',
            borderBottomWidth: 1,
          }}
        >
          Khuyến mãi:
        </Text>
        <RadioButton.Group onValueChange={handleRadioButtonChange} value={checked}>
        {promotions ? promotions.map((promotion, index) => (
  <RadioButton.Item
    key={index}
    label={promotion.name}
    value={promotion.id}
  />
)) : null}
        
      </RadioButton.Group>
      </View>
      <View style={styles.container}>
        <Text>
          Tổng tiền{' '}
          {carts.reduce((a, b) => a + b.promotionPrice * b.quantity, 0)} VND
        </Text>
      </View>
      <View style={styles.container}>
        <Text>
          Khuyến mãi: {' '} {checked?getPromotionById(checked).percentOff:0}% {'   '}
          {carts.reduce((a, b) => a + b.promotionPrice * b.quantity, 0) * (checked?getPromotionById(checked).percentOff:0) / 100} VND
        </Text>
      </View>

      <View style={styles.container}>
        <Text>
          Thanh toán: {' '} 
          {carts.reduce((a, b) => a + b.promotionPrice * b.quantity, 0) * (100- (checked?getPromotionById(checked).percentOff:0)) / 100} VND
        </Text>
      </View>

      <View style={styles.container}>
        <Text>Điền thông tin đặt hàng:</Text>
        <TextInput
          style={styles.input}
          onChangeText={onChangeten}
          value={ten}
          placeholder='Tên'
        />
        <TextInput
          style={styles.input}
          onChangeText={onChangediachi}
          value={diachi}
          placeholder='Địa chỉ'
        />
      </View>
      <View style={styles.container}>
        <Button
          title="Đặt hàng"
          onPress={() => {
            const myHeaders1 = new Headers()

            myHeaders1.append('Content-Type', 'application/json')

            const raw = JSON.stringify({
              name: ten,
              address: diachi,
              pay: carts.reduce((a, b) => a + b.promotionPrice * b.quantity, 0) * (100- (checked?getPromotionById(checked).percentOff:0)) / 100
            })

            const requestOptions = {
              method: 'POST',
              headers: myHeaders1,
              body: raw,
              redirect: 'follow',
            }
            console.log(
              `http://10.0.2.2:8080/apiFood/paymentFromCart?user_id=${authState.user}`
            )
            fetch(
              `http://10.0.2.2:8080/apiFood/paymentFromCart?user_id=${authState.user}`,
              requestOptions
            )
              .then((response) => response.text())
              .then((result) => {
                console.log(result)
                setCarts([])
              })
              .catch((error) => console.log('error', error))

            const raw1 = JSON.stringify({
              Timestamp: '312',
              From: '4234',
              Message: 'New Order',
            })
            const myHeaders = new Headers()
            myHeaders.append('Content-Type', 'application/json')
            const requestOptions1 = {
              method: 'POST',
              headers: myHeaders,
              body: raw1,
              redirect: 'follow',
            }

            fetch('http://10.0.2.2:9047/api/Test', requestOptions1)
              .then((response) => response.text())
              .then((result) => console.log(result))
              .catch((error) => console.log('error', error))
            alert('Yêu cầu đã được gửi cho nhân viên xử lý')
            navigation.navigate('Menu')
          }}
        />
      </View>
    </ScrollView>
  )
}
const styles = StyleSheet.create({
  container: {
    marginVertical: 10,
    backgroundColor: '#fff',
    padding: 10,
  },
  input: {
    height: 40,
    margin: 12,
    borderWidth: 1,
    padding: 10,
  },
})
