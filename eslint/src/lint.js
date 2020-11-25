function error(e, filePath = '', fatal = false) {
  const result = {
    filePath: filePath,
    error: e.message,
    fatal: fatal || !filePath
  }
  process.stderr.write(JSON.stringify([result]) + "\n")
}

async function main () {
  const readline = require('readline')
  const rl = readline.createInterface({
    input: process.stdin,
    terminal: false
  });  
  let eslint
  for await (const line of rl) {
    let item = {}
    try {
      for (item of JSON.parse(line)) {
        if (!eslint) {
          try {
            const { ESLint } = require('eslint')
            eslint = new ESLint()
          } catch (e) {
            error(e, item.filePath, true)
            break;
          }
        }
        const result = await eslint.lintText(item.code, { filePath: item.filePath } )
        process.stdout.write(JSON.stringify(result) + "\n")
      }
    } catch (e) {
      error(e, item.filePath)
    }
  }
}
main().catch(error)