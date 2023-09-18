const fs = require('node:fs')

const t2s = fs.readFileSync('data/hanlp-data/data/dictionary/tc/t2s.txt', 'utf-8')
const line_sep = '\n'

const lines = t2s.split(line_sep)

const newlines = lines.filter((line, i) => {
  const [t, s] = line.split('=')
  const ok = t.length === s.length
  if (!ok) {
    console.log('removed', i, line)
  } 
  return ok
})

const new_t2s = newlines.join(line_sep)

fs.writeFileSync('data/hanlp-data/data/dictionary/tc/t2s.txt', new_t2s)
