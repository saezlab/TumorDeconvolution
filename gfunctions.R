write.gct <- function (gct, filename) {
    f <- file(filename, "w")
    cat("#1.2", "\n", file = f, append = TRUE, sep = "")
    cat(dim(gct)[1], "\t", dim(gct)[2], "\n", file = f, append = TRUE, sep = "")
    
    write.table(gct, file = f, append = TRUE, quote = FALSE, sep = "\t", eol = "\n", col.names = TRUE, row.names = TRUE)
    close(f)
    options(warn = 0)
}

read.gct <- function(infile.gct) {
    ds <- read.delim(infile.gct,
                     header=TRUE,
                     sep="\t",
                     skip=2,
                     row.names=1,
                     blank.lines.skip=TRUE,
                     as.is=TRUE,
                     na.strings="")
    
    return(ds)
}