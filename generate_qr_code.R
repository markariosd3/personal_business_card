qr_text <- "https://markariosd3.github.io/personal_business_card/"
filename_png <- "markarios_personal_qr_code.png"
setwd("/Users/markrios/Documents/Github/personal_business_card")

generate_qr_code <- function(text, filename = "qrcode.png") {
  library(qrencoder)
  
  # Generate QR code matrix
  qr_matrix <- qrencode_raw(text)
  
  # Save as PNG
  png(filename, width = 300, height = 300)  # Set PNG size
  par(mar = c(1, 1, 1, 1))  # Reduce margins
  image(qr_matrix, col = c("white", "black"), axes = FALSE)
  dev.off()  # Close PNG device
}

# Usage
generate_qr_code(qr_text, filename_png)