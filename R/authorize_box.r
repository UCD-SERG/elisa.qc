
library(boxr)

authorize_box <- function() {
  # Check if the current working directory is POSIT
  if (grepl("cloud", getwd())) {
    # Use the first option if the working directory matches
    box_auth_service(token_file = "/cloud/project/box-auth-token/token.ucdserg.json")
    message("Box authenticated using posit")
  } else {
    # Use the second option if the working directory is different
    box_auth_service(token_file = "/home/kaiemjoy/elisa_qc/box_tokens/token.json")  # Adjust the token file as needed
    message("Box authenticated using server")
  }
}
