`__dirname`
`__filename`

file data.js
```javascript
const text = 'Hello something'
module.exports = text
```

file index.js
```js
const text = require('./data')
console.log(text)
```

```js
const path = require('path')
path.basename(__filename)
path.basename(__dirname)
path.dirname(__filename)
path.extname(__filename)
path.parse(__filename)
path.join(__dirname, 'server', 'index.html')
```

```js
const fs = require('fs')
const path = require('path')

fs.mkdir(path.join(__dirname, 'test'), (err) => {
	if (err) {
		throw err	
	}
	console.log('The folder is createad')
})

```

```js
const filePath = path.join(__dirname, 'test', 'text.txt')

fs.writeFile(filePath, 'Hello NodeJS!', (err) => {
    if (err) {
        throw err
    }
})
```

	fs.appendFile()
	
```js
fs.readFile(filePath, (err, content) => {
    if (err) {
        throw err
    }
    const data = Buffer.from(content)
    console.log(data.toString());
})
```

```js
fs.readFile(filePath, 'utf-8', (err, content) => {
    if (err) {
        throw err
    }
    console.log(content);
})
```
