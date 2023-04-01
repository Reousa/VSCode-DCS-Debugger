local DbOption = require("Options.DbOption")

return {
  VSCDEnabled = DbOption.new():setValue(true):checkbox(),
}
