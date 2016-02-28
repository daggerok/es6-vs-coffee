require 'colors'

module.exports = handle: (error) =>
  console.log [
    '\u0007' # beep
    error
  ].join '\n'
  # this.end()