migros <- setRefClass(Class = "migros", fields = c("sube", "icecek", "yiyecek", "teknoloji", "bakim"),methods = list(
  initialize = function(sube, icecek, yiyecek, teknoloji, bakim){
    .self$sube <- sube
    .self$icecek <- icecek
    .self$yiyecek <- yiyecek
    .self$teknoloji <- teknoloji
    .self$bakim <- bakim
  }))
    show = function(){
      cat("MIGROS:", sube, "\n",
          "IÇECEK:", icecek, "|",
          "YIYECEK", yiyecek, "|",
          "TEKNOLOJI", teknoloji,"|",
          "BAKIM", bakim,"|")
    }
  '%+%' <- function(x, ...){
    UseMethod("koru", x)
  }  
  koru.migros <- function(a,b){
    list (
      ticecek = a$icecek + b$icecek, 
      tyiyeyecek = a$yiyecek + b$yiyecek, 
      tteknoloji = a$teknoloji + b$teknoloji ,
      tbakim = a$bakim + b$bakim
    )
  }
beyazit <- migros$new("Beyazit", 3, 5, 7, 6)
maltepe <- migros$new("zevler", 4, 15, 27, 36)
beyazit %+% maltepe
