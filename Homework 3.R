##############################################################
# Dan Mattox                                                 #
# Homework 3                                                 #
# 9/4/2019                                                   #
##############################################################

calcu_loan <- function()
{
  #prompt and store borrower type
  print("Enter the type of borrower (Student/Faculty/Other): ", quote = FALSE)
  borrower <- readline()
  
  #prompt and store material type
  print("Enter the type of materials to borrow (Book/CD):", quote = FALSE)
  material <- readline()
  
  #determine how long they can borrow
  if(material == "Book" & borrower == "Student")
  {
    duration <- " 4 weeks."
  }
  if(material == "CD" & (borrower == "Student" | borrower == "Other"))
  {
   duration <- "1 week."    
  }
  if(material == "Book" & borrower == "Faculty")
  {
    duration <- "6 months."
  }
  if(material == "CD" & borrower == "Faculty")
  {
    duration <- "2 weeks."
  }
  if(material == "Book" & borrower == "Other")
  {
    duration <- "2 weeks."
  }
  
  #change materials to make sense in a sentence
  if(material == "Book")
  {
    material <- "books"
  }
  if(material == "CD")
  {
    material <- "CDs"
  }
  
  #print results
  cat("You can borrow", material, "for", duration)
  
}
