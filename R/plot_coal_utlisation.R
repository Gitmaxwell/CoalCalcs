library(openxlsx)
library(ggplot2)


plot_coal_utilisation <- function(Ashad,CSN,CVad,TSad,VM)
{
  df = read.xlsx("L:/Geology/R/DHSA/utilisation graphs.xlsx", "setup")
  cu.order <- c("Household", "Cement", "Liquefaction", "Pf", "PCI", "Semi-soft Coking","Coking")
  cu.order.no <- c("1", "2", "3", "4", "5", "6","7")
  cu.order.df <- data.frame(cu.order, cu.order.no,variable = "")
  df$variable <- factor(df$variable, c("", "Ash", "Crucible Swelling Number", "Gross Heating Value (adb)", "Total Sulfur (adb) %", "Volatile Matter"), ordered = T)
  df$values <- factor(df$values,cu.order, ordered = TRUE)
  levels(df$values)
  df2 <- list(Ashad,CSN,CVad,TSad,VM)
  df2 <- list(30,5,20,2,25)
  df2 <- as.data.frame(unlist(df2))
  names(df2) <- c("xintercept")
  df2$variable <- c("Ash", "Crucible Swelling Number", "Gross Heating Value (adb)", "Total Sulfur (adb) %", "Volatile Matter")
  df2 <- merge(df2, df, by="variable", all=TRUE)
  p <- ggplot(df) + geom_rect(aes(xmin = min, xmax = max, ymin = as.numeric(values)-0.25, ymax = as.numeric(values)+0.25), fill = "lightblue") +
    facet_wrap(~variable,ncol = 6, scale = "free_x") +
    geom_rect(fill = "darkblue", aes(xmin = ideal_xmin, xmax = ideal_xmax, ymin = as.numeric(df$values)-0.25, ymax = as.numeric(df$values)+0.25), size = 4) + geom_vline(data = df2, aes(xintercept = xintercept), color = "red") + geom_text(data = cu.order.df, aes(x = 20, y = as.numeric(cu.order.no), label = cu.order)) + ylab("Product") + xlab("Value")
  return(p)
}

plot_coal_utilisation(30,5,20,2,25)


#https://stackoverflow.com/questions/6827299/r-apply-function-with-multiple-parameters



#detemine coal utilisation

calculate_caol_utilisation <- function(Ashad,CSN,CVad,TSad,VM) 
{
  df = read.xlsx("L:/Geology/R/DHSA/utilisation graphs.xlsx", "setup")
  cu.order <- c("Household", "Cement", "Liquefaction", "Pf", "PCI", "Semi-soft Coking","Coking")
  cu.order.no <- c("1", "2", "3", "4", "5", "6","7")
  cu.order.df <- data.frame(cu.order, cu.order.no,variable = "")
  df$variable <- factor(df$variable, c("", "Ash", "Crucible Swelling Number", "Gross Heating Value (adb)", "Total Sulfur (adb) %", "Volatile Matter"), ordered = T)
  df$values <- factor(df$values,cu.order, ordered = TRUE)
  levels(df$values)
  df2 <- list(Ashad,CSN,CVad,TSad,VM)
  df2 <- list(30,5,20,2,25)
  df2 <- as.data.frame(unlist(df2))
  names(df2) <- c("xintercept")
  df2$variable <- c("Ash", "Crucible Swelling Number", "Gross Heating Value (adb)", "Total Sulfur (adb) %", "Volatile Matter")
  df2 <- merge(df2, df, by="variable", all=TRUE)
  
}


#df2$ideal_meets <- ifelse(df2$xintercept <=df2$ideal_xmax & df2$xintercept >= df2$ideal_xmin, 1,0)
#df2$full_meets <- ifelse(df2$xintercept <=df2$max & df2$xintercept >= df2$min, 1,0)

#library(data.table)
#dt <- as.data.table(df2) 

#meetssumm <- dt[,list(ideal_meets = sum(ideal_meets),full_meets = sum(full_meets)), by=c("values")]
#names(meetssumm) <- c("Product", "Number of parameters in ideal range", "Number of parameters in full range")




