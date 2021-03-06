
# WARNING: The first call to one of the functions
# discussed on this page loads a large data set 
# and usually takes > 10 seconds. Stay patient.

acss(c("HEHHEE", "GHHGGHGHH", "HSHSHHSHSS"))
##                 K.9          D.9
## HEHHEE     23.38852 9.106564e-08
## GHHGGHGHH  33.50168 8.222205e-11
## HSHSHHSHSS 35.15241 2.618613e-11

acss(c("HEHHEE", "GHHGGHGHH", "HSHSHHSHSS"))[,"K.9"]
## [1] 23.38852 33.50168 35.15241

acss(c("HEHHEE", "GHHGGHGHH", "HSHSHHSHSS"), alphabet = 2)
##                 K.2          D.2
## HEHHEE     14.96921 3.117581e-05
## GHHGGHGHH  25.60208 1.963387e-08
## HSHSHHSHSS 26.90906 7.935321e-09

acss(c("HEHHEE", "GHHGGHGHUE", "HSHSHHSHSS"), NULL)
##                 K.2      K.4      K.5      K.6      K.9
## HEHHEE     14.96921 18.55227 19.70361 20.75762 23.38852
## GHHGGHGHUE       NA 31.75832 33.00795 34.27457 37.78935
## HSHSHHSHSS 26.90906 29.37852 30.52566 31.76229 35.15241
##                     D.2          D.4          D.5          D.6
## HEHHEE     3.117581e-05 2.601421e-06 1.171176e-06 5.640722e-07
## GHHGGHGHUE           NA 2.752909e-10 1.157755e-10 4.812021e-11
## HSHSHHSHSS 7.935321e-09 1.432793e-09 6.469341e-10 2.745360e-10
##                     D.9
## HEHHEE     9.106564e-08
## GHHGGHGHUE 4.209915e-12
## HSHSHHSHSS 2.618613e-11

\dontrun{
likelihood_d(c("HTHTHTHT", "HTHHTHTT"), alphabet = 2)
##    HTHTHTHT    HTHHTHTT 
## 0.010366951 0.003102718 

likelihood_ratio(c("HTHTHTHT", "HTHHTHTT"), alphabet = 2)
##  HTHTHTHT  HTHHTHTT 
## 0.3767983 1.2589769 

prob_random(c("HTHTHTHT", "HTHHTHTT"), alphabet = 2)
##  HTHTHTHT  HTHHTHTT 
## 0.2736772 0.5573217
}

local_complexity(c("01011010111" ,"GHHGGHGHUE"), alphabet = 5, span=5)
## $`01011010111`
##    01011    10110    01101    11010    10101    01011    10111 
## 16.22469 16.24766 16.24766 16.22469 16.24322 16.22469 15.93927 
## 
## $GHHGGHGHUE
##    GHHGG    HHGGH    HGGHG    GGHGH    GHGHU    HGHUE 
## 16.44639 16.44639 16.24766 16.22469 16.58986 16.86449 


local_complexity(c("01011010111" ,"GHHGGHGHUE"), span=7)
## $`01011010111`
##  0101101  1011010  0110101  1101011  1010111 
## 26.52068 26.52068 26.47782 26.62371 26.29186 
## 
## $GHHGGHGHUE
##  GHHGGHG  HHGGHGH  HGGHGHU  GGHGHUE 
## 27.04623 26.86992 27.30871 27.84322 
