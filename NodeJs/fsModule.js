const fs = require('fs')


// CREATE
fs.writeFile('employees.json', '[{"name": "Employee 1 Name", "salary": 2000},', 'utf-8', (err) => {
    if (err) console.log(err)
    console.log('Dosya oluşturuldu')
})

// READ
fs.readFile('employees.json', 'utf-8', (err, data) => {
    if (err) console.log(err)
    console.log(data)
    console.log('Dosya okundu')
})

// UPDATE
fs.appendFile('employees.json', '\n {"name": "Employee 2 Name", "salary": 5000}]', 'utf-8', (err) => {
    if (err) console.log(err)
    console.log('Dosya güncellendi')
})

// DELETE
fs.unlink('employees.json', (err) => {
    if (err) console.log(err)
    console.log('Dosya silindi')
})