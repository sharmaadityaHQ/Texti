const fs = require('fs')

const data = fs.readFileSync('./api.txt', 'utf-8')

const text = data.split(' ')

const attributes = data.split('\n').slice(1)

let name

for (let i = 0; i < text.length; i++) {
  if (text[i] === 'API') {
    name = text[i - 1]
  }
}

console.log(name + " " + attributes.toString().replace(/,/g,' '))
