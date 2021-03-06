#' @name flush
#' @title Updating a big.matrix filebacking.
#' @description
#'    For a file-backed \code{big.matrix} object, \code{flush()} forces
#'    any modified information to be written to the file-backing.
#' @param con filebacked \code{\link{big.matrix}}.
#' @details
#'    This function flushes any modified data (in \acronym{RAM}) of a file-backed
#'    \code{big.matrix} to disk.  This may be useful for
#'    improving performance in cases where allowing the operating system to decide
#'    on flushing creates a bottleneck (likely near the threshold of available \acronym{RAM}).
#' @return \code{TRUE} or \code{FALSE} (invisible), indicating whether or not the flush was successful.
#' @author John W. Emerson and Michael J. Kane
#' @examples 
#' temp_dir = tempdir()
#' if (!dir.exists(temp_dir)) dir.create(temp_dir)
#' x <- big.matrix(nrow=3, ncol=3, backingfile='flushtest.bin',
#'                 descriptorfile='flushtest.desc', backingpath=temp_dir,
#'                 type='integer')
#' x[1,1] <- 0
#' flush(x)
#' @docType methods
#' @rdname flush-methods
#' @keywords methods
