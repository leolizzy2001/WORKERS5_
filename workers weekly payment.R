
R version 4.3.2 (2023-10-31 ucrt) -- "Eye Holes"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> # Step 1: Create a list of workers dynamically
> workers <- list()
> 
> for (i in 1:400) {
+   worker <- list(
+     id = i,
+     name = paste("Worker", i),
+     gender = ifelse(i %% 2 == 0, "female", "male"),
+     salary = 5000 + i * 25
+   )
+   workers[[i]] <- worker
+ }
> 
> # Step 2: Generate payment slips for each worker and apply conditions
> for (worker in workers) {
+   tryCatch({
+     salary <- worker$salary
+     if (salary > 10000 & salary < 20000) {
+       worker$level <- "A1"
+     } else if (salary > 7500 & salary < 30000 & worker$gender == "female") {
+       worker$level <- "A5-F"
+     } else {
+       worker$level <- "Regular"
+     }
+     cat("Payment Slip for", worker$name, "- Level:", worker$level, ", Salary: $", salary, "\n")
+   }, error = function(e) {
+     cat("Error occurred for worker", worker$id, ": ", conditionMessage(e), "\n")
+   })
+ }
Payment Slip for Worker 1 - Level: Regular , Salary: $ 5025 
Payment Slip for Worker 2 - Level: Regular , Salary: $ 5050 
Payment Slip for Worker 3 - Level: Regular , Salary: $ 5075 
Payment Slip for Worker 4 - Level: Regular , Salary: $ 5100 
Payment Slip for Worker 5 - Level: Regular , Salary: $ 5125 
Payment Slip for Worker 6 - Level: Regular , Salary: $ 5150 
Payment Slip for Worker 7 - Level: Regular , Salary: $ 5175 
Payment Slip for Worker 8 - Level: Regular , Salary: $ 5200 
Payment Slip for Worker 9 - Level: Regular , Salary: $ 5225 
Payment Slip for Worker 10 - Level: Regular , Salary: $ 5250 
Payment Slip for Worker 11 - Level: Regular , Salary: $ 5275 
Payment Slip for Worker 12 - Level: Regular , Salary: $ 5300 
Payment Slip for Worker 13 - Level: Regular , Salary: $ 5325 
Payment Slip for Worker 14 - Level: Regular , Salary: $ 5350 
Payment Slip for Worker 15 - Level: Regular , Salary: $ 5375 
Payment Slip for Worker 16 - Level: Regular , Salary: $ 5400 
Payment Slip for Worker 17 - Level: Regular , Salary: $ 5425 
Payment Slip for Worker 18 - Level: Regular , Salary: $ 5450 
Payment Slip for Worker 19 - Level: Regular , Salary: $ 5475 
Payment Slip for Worker 20 - Level: Regular , Salary: $ 5500 
Payment Slip for Worker 21 - Level: Regular , Salary: $ 5525 
Payment Slip for Worker 22 - Level: Regular , Salary: $ 5550 
Payment Slip for Worker 23 - Level: Regular , Salary: $ 5575 
Payment Slip for Worker 24 - Level: Regular , Salary: $ 5600 
Payment Slip for Worker 25 - Level: Regular , Salary: $ 5625 
Payment Slip for Worker 26 - Level: Regular , Salary: $ 5650 
Payment Slip for Worker 27 - Level: Regular , Salary: $ 5675 
Payment Slip for Worker 28 - Level: Regular , Salary: $ 5700 
Payment Slip for Worker 29 - Level: Regular , Salary: $ 5725 
Payment Slip for Worker 30 - Level: Regular , Salary: $ 5750 
Payment Slip for Worker 31 - Level: Regular , Salary: $ 5775 
Payment Slip for Worker 32 - Level: Regular , Salary: $ 5800 
Payment Slip for Worker 33 - Level: Regular , Salary: $ 5825 
Payment Slip for Worker 34 - Level: Regular , Salary: $ 5850 
Payment Slip for Worker 35 - Level: Regular , Salary: $ 5875 
Payment Slip for Worker 36 - Level: Regular , Salary: $ 5900 
Payment Slip for Worker 37 - Level: Regular , Salary: $ 5925 
Payment Slip for Worker 38 - Level: Regular , Salary: $ 5950 
Payment Slip for Worker 39 - Level: Regular , Salary: $ 5975 
Payment Slip for Worker 40 - Level: Regular , Salary: $ 6000 
Payment Slip for Worker 41 - Level: Regular , Salary: $ 6025 
Payment Slip for Worker 42 - Level: Regular , Salary: $ 6050 
Payment Slip for Worker 43 - Level: Regular , Salary: $ 6075 
Payment Slip for Worker 44 - Level: Regular , Salary: $ 6100 
Payment Slip for Worker 45 - Level: Regular , Salary: $ 6125 
Payment Slip for Worker 46 - Level: Regular , Salary: $ 6150 
Payment Slip for Worker 47 - Level: Regular , Salary: $ 6175 
Payment Slip for Worker 48 - Level: Regular , Salary: $ 6200 
Payment Slip for Worker 49 - Level: Regular , Salary: $ 6225 
Payment Slip for Worker 50 - Level: Regular , Salary: $ 6250 
Payment Slip for Worker 51 - Level: Regular , Salary: $ 6275 
Payment Slip for Worker 52 - Level: Regular , Salary: $ 6300 
Payment Slip for Worker 53 - Level: Regular , Salary: $ 6325 
Payment Slip for Worker 54 - Level: Regular , Salary: $ 6350 
Payment Slip for Worker 55 - Level: Regular , Salary: $ 6375 
Payment Slip for Worker 56 - Level: Regular , Salary: $ 6400 
Payment Slip for Worker 57 - Level: Regular , Salary: $ 6425 
Payment Slip for Worker 58 - Level: Regular , Salary: $ 6450 
Payment Slip for Worker 59 - Level: Regular , Salary: $ 6475 
Payment Slip for Worker 60 - Level: Regular , Salary: $ 6500 
Payment Slip for Worker 61 - Level: Regular , Salary: $ 6525 
Payment Slip for Worker 62 - Level: Regular , Salary: $ 6550 
Payment Slip for Worker 63 - Level: Regular , Salary: $ 6575 
Payment Slip for Worker 64 - Level: Regular , Salary: $ 6600 
Payment Slip for Worker 65 - Level: Regular , Salary: $ 6625 
Payment Slip for Worker 66 - Level: Regular , Salary: $ 6650 
Payment Slip for Worker 67 - Level: Regular , Salary: $ 6675 
Payment Slip for Worker 68 - Level: Regular , Salary: $ 6700 
Payment Slip for Worker 69 - Level: Regular , Salary: $ 6725 
Payment Slip for Worker 70 - Level: Regular , Salary: $ 6750 
Payment Slip for Worker 71 - Level: Regular , Salary: $ 6775 
Payment Slip for Worker 72 - Level: Regular , Salary: $ 6800 
Payment Slip for Worker 73 - Level: Regular , Salary: $ 6825 
Payment Slip for Worker 74 - Level: Regular , Salary: $ 6850 
Payment Slip for Worker 75 - Level: Regular , Salary: $ 6875 
Payment Slip for Worker 76 - Level: Regular , Salary: $ 6900 
Payment Slip for Worker 77 - Level: Regular , Salary: $ 6925 
Payment Slip for Worker 78 - Level: Regular , Salary: $ 6950 
Payment Slip for Worker 79 - Level: Regular , Salary: $ 6975 
Payment Slip for Worker 80 - Level: Regular , Salary: $ 7000 
Payment Slip for Worker 81 - Level: Regular , Salary: $ 7025 
Payment Slip for Worker 82 - Level: Regular , Salary: $ 7050 
Payment Slip for Worker 83 - Level: Regular , Salary: $ 7075 
Payment Slip for Worker 84 - Level: Regular , Salary: $ 7100 
Payment Slip for Worker 85 - Level: Regular , Salary: $ 7125 
Payment Slip for Worker 86 - Level: Regular , Salary: $ 7150 
Payment Slip for Worker 87 - Level: Regular , Salary: $ 7175 
Payment Slip for Worker 88 - Level: Regular , Salary: $ 7200 
Payment Slip for Worker 89 - Level: Regular , Salary: $ 7225 
Payment Slip for Worker 90 - Level: Regular , Salary: $ 7250 
Payment Slip for Worker 91 - Level: Regular , Salary: $ 7275 
Payment Slip for Worker 92 - Level: Regular , Salary: $ 7300 
Payment Slip for Worker 93 - Level: Regular , Salary: $ 7325 
Payment Slip for Worker 94 - Level: Regular , Salary: $ 7350 
Payment Slip for Worker 95 - Level: Regular , Salary: $ 7375 
Payment Slip for Worker 96 - Level: Regular , Salary: $ 7400 
Payment Slip for Worker 97 - Level: Regular , Salary: $ 7425 
Payment Slip for Worker 98 - Level: Regular , Salary: $ 7450 
Payment Slip for Worker 99 - Level: Regular , Salary: $ 7475 
Payment Slip for Worker 100 - Level: Regular , Salary: $ 7500 
Payment Slip for Worker 101 - Level: Regular , Salary: $ 7525 
Payment Slip for Worker 102 - Level: A5-F , Salary: $ 7550 
Payment Slip for Worker 103 - Level: Regular , Salary: $ 7575 
Payment Slip for Worker 104 - Level: A5-F , Salary: $ 7600 
Payment Slip for Worker 105 - Level: Regular , Salary: $ 7625 
Payment Slip for Worker 106 - Level: A5-F , Salary: $ 7650 
Payment Slip for Worker 107 - Level: Regular , Salary: $ 7675 
Payment Slip for Worker 108 - Level: A5-F , Salary: $ 7700 
Payment Slip for Worker 109 - Level: Regular , Salary: $ 7725 
Payment Slip for Worker 110 - Level: A5-F , Salary: $ 7750 
Payment Slip for Worker 111 - Level: Regular , Salary: $ 7775 
Payment Slip for Worker 112 - Level: A5-F , Salary: $ 7800 
Payment Slip for Worker 113 - Level: Regular , Salary: $ 7825 
Payment Slip for Worker 114 - Level: A5-F , Salary: $ 7850 
Payment Slip for Worker 115 - Level: Regular , Salary: $ 7875 
Payment Slip for Worker 116 - Level: A5-F , Salary: $ 7900 
Payment Slip for Worker 117 - Level: Regular , Salary: $ 7925 
Payment Slip for Worker 118 - Level: A5-F , Salary: $ 7950 
Payment Slip for Worker 119 - Level: Regular , Salary: $ 7975 
Payment Slip for Worker 120 - Level: A5-F , Salary: $ 8000 
Payment Slip for Worker 121 - Level: Regular , Salary: $ 8025 
Payment Slip for Worker 122 - Level: A5-F , Salary: $ 8050 
Payment Slip for Worker 123 - Level: Regular , Salary: $ 8075 
Payment Slip for Worker 124 - Level: A5-F , Salary: $ 8100 
Payment Slip for Worker 125 - Level: Regular , Salary: $ 8125 
Payment Slip for Worker 126 - Level: A5-F , Salary: $ 8150 
Payment Slip for Worker 127 - Level: Regular , Salary: $ 8175 
Payment Slip for Worker 128 - Level: A5-F , Salary: $ 8200 
Payment Slip for Worker 129 - Level: Regular , Salary: $ 8225 
Payment Slip for Worker 130 - Level: A5-F , Salary: $ 8250 
Payment Slip for Worker 131 - Level: Regular , Salary: $ 8275 
Payment Slip for Worker 132 - Level: A5-F , Salary: $ 8300 
Payment Slip for Worker 133 - Level: Regular , Salary: $ 8325 
Payment Slip for Worker 134 - Level: A5-F , Salary: $ 8350 
Payment Slip for Worker 135 - Level: Regular , Salary: $ 8375 
Payment Slip for Worker 136 - Level: A5-F , Salary: $ 8400 
Payment Slip for Worker 137 - Level: Regular , Salary: $ 8425 
Payment Slip for Worker 138 - Level: A5-F , Salary: $ 8450 
Payment Slip for Worker 139 - Level: Regular , Salary: $ 8475 
Payment Slip for Worker 140 - Level: A5-F , Salary: $ 8500 
Payment Slip for Worker 141 - Level: Regular , Salary: $ 8525 
Payment Slip for Worker 142 - Level: A5-F , Salary: $ 8550 
Payment Slip for Worker 143 - Level: Regular , Salary: $ 8575 
Payment Slip for Worker 144 - Level: A5-F , Salary: $ 8600 
Payment Slip for Worker 145 - Level: Regular , Salary: $ 8625 
Payment Slip for Worker 146 - Level: A5-F , Salary: $ 8650 
Payment Slip for Worker 147 - Level: Regular , Salary: $ 8675 
Payment Slip for Worker 148 - Level: A5-F , Salary: $ 8700 
Payment Slip for Worker 149 - Level: Regular , Salary: $ 8725 
Payment Slip for Worker 150 - Level: A5-F , Salary: $ 8750 
Payment Slip for Worker 151 - Level: Regular , Salary: $ 8775 
Payment Slip for Worker 152 - Level: A5-F , Salary: $ 8800 
Payment Slip for Worker 153 - Level: Regular , Salary: $ 8825 
Payment Slip for Worker 154 - Level: A5-F , Salary: $ 8850 
Payment Slip for Worker 155 - Level: Regular , Salary: $ 8875 
Payment Slip for Worker 156 - Level: A5-F , Salary: $ 8900 
Payment Slip for Worker 157 - Level: Regular , Salary: $ 8925 
Payment Slip for Worker 158 - Level: A5-F , Salary: $ 8950 
Payment Slip for Worker 159 - Level: Regular , Salary: $ 8975 
Payment Slip for Worker 160 - Level: A5-F , Salary: $ 9000 
Payment Slip for Worker 161 - Level: Regular , Salary: $ 9025 
Payment Slip for Worker 162 - Level: A5-F , Salary: $ 9050 
Payment Slip for Worker 163 - Level: Regular , Salary: $ 9075 
Payment Slip for Worker 164 - Level: A5-F , Salary: $ 9100 
Payment Slip for Worker 165 - Level: Regular , Salary: $ 9125 
Payment Slip for Worker 166 - Level: A5-F , Salary: $ 9150 
Payment Slip for Worker 167 - Level: Regular , Salary: $ 9175 
Payment Slip for Worker 168 - Level: A5-F , Salary: $ 9200 
Payment Slip for Worker 169 - Level: Regular , Salary: $ 9225 
Payment Slip for Worker 170 - Level: A5-F , Salary: $ 9250 
Payment Slip for Worker 171 - Level: Regular , Salary: $ 9275 
Payment Slip for Worker 172 - Level: A5-F , Salary: $ 9300 
Payment Slip for Worker 173 - Level: Regular , Salary: $ 9325 
Payment Slip for Worker 174 - Level: A5-F , Salary: $ 9350 
Payment Slip for Worker 175 - Level: Regular , Salary: $ 9375 
Payment Slip for Worker 176 - Level: A5-F , Salary: $ 9400 
Payment Slip for Worker 177 - Level: Regular , Salary: $ 9425 
Payment Slip for Worker 178 - Level: A5-F , Salary: $ 9450 
Payment Slip for Worker 179 - Level: Regular , Salary: $ 9475 
Payment Slip for Worker 180 - Level: A5-F , Salary: $ 9500 
Payment Slip for Worker 181 - Level: Regular , Salary: $ 9525 
Payment Slip for Worker 182 - Level: A5-F , Salary: $ 9550 
Payment Slip for Worker 183 - Level: Regular , Salary: $ 9575 
Payment Slip for Worker 184 - Level: A5-F , Salary: $ 9600 
Payment Slip for Worker 185 - Level: Regular , Salary: $ 9625 
Payment Slip for Worker 186 - Level: A5-F , Salary: $ 9650 
Payment Slip for Worker 187 - Level: Regular , Salary: $ 9675 
Payment Slip for Worker 188 - Level: A5-F , Salary: $ 9700 
Payment Slip for Worker 189 - Level: Regular , Salary: $ 9725 
Payment Slip for Worker 190 - Level: A5-F , Salary: $ 9750 
Payment Slip for Worker 191 - Level: Regular , Salary: $ 9775 
Payment Slip for Worker 192 - Level: A5-F , Salary: $ 9800 
Payment Slip for Worker 193 - Level: Regular , Salary: $ 9825 
Payment Slip for Worker 194 - Level: A5-F , Salary: $ 9850 
Payment Slip for Worker 195 - Level: Regular , Salary: $ 9875 
Payment Slip for Worker 196 - Level: A5-F , Salary: $ 9900 
Payment Slip for Worker 197 - Level: Regular , Salary: $ 9925 
Payment Slip for Worker 198 - Level: A5-F , Salary: $ 9950 
Payment Slip for Worker 199 - Level: Regular , Salary: $ 9975 
Payment Slip for Worker 200 - Level: A5-F , Salary: $ 10000 
Payment Slip for Worker 201 - Level: A1 , Salary: $ 10025 
Payment Slip for Worker 202 - Level: A1 , Salary: $ 10050 
Payment Slip for Worker 203 - Level: A1 , Salary: $ 10075 
Payment Slip for Worker 204 - Level: A1 , Salary: $ 10100 
Payment Slip for Worker 205 - Level: A1 , Salary: $ 10125 
Payment Slip for Worker 206 - Level: A1 , Salary: $ 10150 
Payment Slip for Worker 207 - Level: A1 , Salary: $ 10175 
Payment Slip for Worker 208 - Level: A1 , Salary: $ 10200 
Payment Slip for Worker 209 - Level: A1 , Salary: $ 10225 
Payment Slip for Worker 210 - Level: A1 , Salary: $ 10250 
Payment Slip for Worker 211 - Level: A1 , Salary: $ 10275 
Payment Slip for Worker 212 - Level: A1 , Salary: $ 10300 
Payment Slip for Worker 213 - Level: A1 , Salary: $ 10325 
Payment Slip for Worker 214 - Level: A1 , Salary: $ 10350 
Payment Slip for Worker 215 - Level: A1 , Salary: $ 10375 
Payment Slip for Worker 216 - Level: A1 , Salary: $ 10400 
Payment Slip for Worker 217 - Level: A1 , Salary: $ 10425 
Payment Slip for Worker 218 - Level: A1 , Salary: $ 10450 
Payment Slip for Worker 219 - Level: A1 , Salary: $ 10475 
Payment Slip for Worker 220 - Level: A1 , Salary: $ 10500 
Payment Slip for Worker 221 - Level: A1 , Salary: $ 10525 
Payment Slip for Worker 222 - Level: A1 , Salary: $ 10550 
Payment Slip for Worker 223 - Level: A1 , Salary: $ 10575 
Payment Slip for Worker 224 - Level: A1 , Salary: $ 10600 
Payment Slip for Worker 225 - Level: A1 , Salary: $ 10625 
Payment Slip for Worker 226 - Level: A1 , Salary: $ 10650 
Payment Slip for Worker 227 - Level: A1 , Salary: $ 10675 
Payment Slip for Worker 228 - Level: A1 , Salary: $ 10700 
Payment Slip for Worker 229 - Level: A1 , Salary: $ 10725 
Payment Slip for Worker 230 - Level: A1 , Salary: $ 10750 
Payment Slip for Worker 231 - Level: A1 , Salary: $ 10775 
Payment Slip for Worker 232 - Level: A1 , Salary: $ 10800 
Payment Slip for Worker 233 - Level: A1 , Salary: $ 10825 
Payment Slip for Worker 234 - Level: A1 , Salary: $ 10850 
Payment Slip for Worker 235 - Level: A1 , Salary: $ 10875 
Payment Slip for Worker 236 - Level: A1 , Salary: $ 10900 
Payment Slip for Worker 237 - Level: A1 , Salary: $ 10925 
Payment Slip for Worker 238 - Level: A1 , Salary: $ 10950 
Payment Slip for Worker 239 - Level: A1 , Salary: $ 10975 
Payment Slip for Worker 240 - Level: A1 , Salary: $ 11000 
Payment Slip for Worker 241 - Level: A1 , Salary: $ 11025 
Payment Slip for Worker 242 - Level: A1 , Salary: $ 11050 
Payment Slip for Worker 243 - Level: A1 , Salary: $ 11075 
Payment Slip for Worker 244 - Level: A1 , Salary: $ 11100 
Payment Slip for Worker 245 - Level: A1 , Salary: $ 11125 
Payment Slip for Worker 246 - Level: A1 , Salary: $ 11150 
Payment Slip for Worker 247 - Level: A1 , Salary: $ 11175 
Payment Slip for Worker 248 - Level: A1 , Salary: $ 11200 
Payment Slip for Worker 249 - Level: A1 , Salary: $ 11225 
Payment Slip for Worker 250 - Level: A1 , Salary: $ 11250 
Payment Slip for Worker 251 - Level: A1 , Salary: $ 11275 
Payment Slip for Worker 252 - Level: A1 , Salary: $ 11300 
Payment Slip for Worker 253 - Level: A1 , Salary: $ 11325 
Payment Slip for Worker 254 - Level: A1 , Salary: $ 11350 
Payment Slip for Worker 255 - Level: A1 , Salary: $ 11375 
Payment Slip for Worker 256 - Level: A1 , Salary: $ 11400 
Payment Slip for Worker 257 - Level: A1 , Salary: $ 11425 
Payment Slip for Worker 258 - Level: A1 , Salary: $ 11450 
Payment Slip for Worker 259 - Level: A1 , Salary: $ 11475 
Payment Slip for Worker 260 - Level: A1 , Salary: $ 11500 
Payment Slip for Worker 261 - Level: A1 , Salary: $ 11525 
Payment Slip for Worker 262 - Level: A1 , Salary: $ 11550 
Payment Slip for Worker 263 - Level: A1 , Salary: $ 11575 
Payment Slip for Worker 264 - Level: A1 , Salary: $ 11600 
Payment Slip for Worker 265 - Level: A1 , Salary: $ 11625 
Payment Slip for Worker 266 - Level: A1 , Salary: $ 11650 
Payment Slip for Worker 267 - Level: A1 , Salary: $ 11675 
Payment Slip for Worker 268 - Level: A1 , Salary: $ 11700 
Payment Slip for Worker 269 - Level: A1 , Salary: $ 11725 
Payment Slip for Worker 270 - Level: A1 , Salary: $ 11750 
Payment Slip for Worker 271 - Level: A1 , Salary: $ 11775 
Payment Slip for Worker 272 - Level: A1 , Salary: $ 11800 
Payment Slip for Worker 273 - Level: A1 , Salary: $ 11825 
Payment Slip for Worker 274 - Level: A1 , Salary: $ 11850 
Payment Slip for Worker 275 - Level: A1 , Salary: $ 11875 
Payment Slip for Worker 276 - Level: A1 , Salary: $ 11900 
Payment Slip for Worker 277 - Level: A1 , Salary: $ 11925 
Payment Slip for Worker 278 - Level: A1 , Salary: $ 11950 
Payment Slip for Worker 279 - Level: A1 , Salary: $ 11975 
Payment Slip for Worker 280 - Level: A1 , Salary: $ 12000 
Payment Slip for Worker 281 - Level: A1 , Salary: $ 12025 
Payment Slip for Worker 282 - Level: A1 , Salary: $ 12050 
Payment Slip for Worker 283 - Level: A1 , Salary: $ 12075 
Payment Slip for Worker 284 - Level: A1 , Salary: $ 12100 
Payment Slip for Worker 285 - Level: A1 , Salary: $ 12125 
Payment Slip for Worker 286 - Level: A1 , Salary: $ 12150 
Payment Slip for Worker 287 - Level: A1 , Salary: $ 12175 
Payment Slip for Worker 288 - Level: A1 , Salary: $ 12200 
Payment Slip for Worker 289 - Level: A1 , Salary: $ 12225 
Payment Slip for Worker 290 - Level: A1 , Salary: $ 12250 
Payment Slip for Worker 291 - Level: A1 , Salary: $ 12275 
Payment Slip for Worker 292 - Level: A1 , Salary: $ 12300 
Payment Slip for Worker 293 - Level: A1 , Salary: $ 12325 
Payment Slip for Worker 294 - Level: A1 , Salary: $ 12350 
Payment Slip for Worker 295 - Level: A1 , Salary: $ 12375 
Payment Slip for Worker 296 - Level: A1 , Salary: $ 12400 
Payment Slip for Worker 297 - Level: A1 , Salary: $ 12425 
Payment Slip for Worker 298 - Level: A1 , Salary: $ 12450 
Payment Slip for Worker 299 - Level: A1 , Salary: $ 12475 
Payment Slip for Worker 300 - Level: A1 , Salary: $ 12500 
Payment Slip for Worker 301 - Level: A1 , Salary: $ 12525 
Payment Slip for Worker 302 - Level: A1 , Salary: $ 12550 
Payment Slip for Worker 303 - Level: A1 , Salary: $ 12575 
Payment Slip for Worker 304 - Level: A1 , Salary: $ 12600 
Payment Slip for Worker 305 - Level: A1 , Salary: $ 12625 
Payment Slip for Worker 306 - Level: A1 , Salary: $ 12650 
Payment Slip for Worker 307 - Level: A1 , Salary: $ 12675 
Payment Slip for Worker 308 - Level: A1 , Salary: $ 12700 
Payment Slip for Worker 309 - Level: A1 , Salary: $ 12725 
Payment Slip for Worker 310 - Level: A1 , Salary: $ 12750 
Payment Slip for Worker 311 - Level: A1 , Salary: $ 12775 
Payment Slip for Worker 312 - Level: A1 , Salary: $ 12800 
Payment Slip for Worker 313 - Level: A1 , Salary: $ 12825 
Payment Slip for Worker 314 - Level: A1 , Salary: $ 12850 
Payment Slip for Worker 315 - Level: A1 , Salary: $ 12875 
Payment Slip for Worker 316 - Level: A1 , Salary: $ 12900 
Payment Slip for Worker 317 - Level: A1 , Salary: $ 12925 
Payment Slip for Worker 318 - Level: A1 , Salary: $ 12950 
Payment Slip for Worker 319 - Level: A1 , Salary: $ 12975 
Payment Slip for Worker 320 - Level: A1 , Salary: $ 13000 
Payment Slip for Worker 321 - Level: A1 , Salary: $ 13025 
Payment Slip for Worker 322 - Level: A1 , Salary: $ 13050 
Payment Slip for Worker 323 - Level: A1 , Salary: $ 13075 
Payment Slip for Worker 324 - Level: A1 , Salary: $ 13100 
Payment Slip for Worker 325 - Level: A1 , Salary: $ 13125 
Payment Slip for Worker 326 - Level: A1 , Salary: $ 13150 
Payment Slip for Worker 327 - Level: A1 , Salary: $ 13175 
Payment Slip for Worker 328 - Level: A1 , Salary: $ 13200 
Payment Slip for Worker 329 - Level: A1 , Salary: $ 13225 
Payment Slip for Worker 330 - Level: A1 , Salary: $ 13250 
Payment Slip for Worker 331 - Level: A1 , Salary: $ 13275 
Payment Slip for Worker 332 - Level: A1 , Salary: $ 13300 
Payment Slip for Worker 333 - Level: A1 , Salary: $ 13325 
Payment Slip for Worker 334 - Level: A1 , Salary: $ 13350 
Payment Slip for Worker 335 - Level: A1 , Salary: $ 13375 
Payment Slip for Worker 336 - Level: A1 , Salary: $ 13400 
Payment Slip for Worker 337 - Level: A1 , Salary: $ 13425 
Payment Slip for Worker 338 - Level: A1 , Salary: $ 13450 
Payment Slip for Worker 339 - Level: A1 , Salary: $ 13475 
Payment Slip for Worker 340 - Level: A1 , Salary: $ 13500 
Payment Slip for Worker 341 - Level: A1 , Salary: $ 13525 
Payment Slip for Worker 342 - Level: A1 , Salary: $ 13550 
Payment Slip for Worker 343 - Level: A1 , Salary: $ 13575 
Payment Slip for Worker 344 - Level: A1 , Salary: $ 13600 
Payment Slip for Worker 345 - Level: A1 , Salary: $ 13625 
Payment Slip for Worker 346 - Level: A1 , Salary: $ 13650 
Payment Slip for Worker 347 - Level: A1 , Salary: $ 13675 
Payment Slip for Worker 348 - Level: A1 , Salary: $ 13700 
Payment Slip for Worker 349 - Level: A1 , Salary: $ 13725 
Payment Slip for Worker 350 - Level: A1 , Salary: $ 13750 
Payment Slip for Worker 351 - Level: A1 , Salary: $ 13775 
Payment Slip for Worker 352 - Level: A1 , Salary: $ 13800 
Payment Slip for Worker 353 - Level: A1 , Salary: $ 13825 
Payment Slip for Worker 354 - Level: A1 , Salary: $ 13850 
Payment Slip for Worker 355 - Level: A1 , Salary: $ 13875 
Payment Slip for Worker 356 - Level: A1 , Salary: $ 13900 
Payment Slip for Worker 357 - Level: A1 , Salary: $ 13925 
Payment Slip for Worker 358 - Level: A1 , Salary: $ 13950 
Payment Slip for Worker 359 - Level: A1 , Salary: $ 13975 
Payment Slip for Worker 360 - Level: A1 , Salary: $ 14000 
Payment Slip for Worker 361 - Level: A1 , Salary: $ 14025 
Payment Slip for Worker 362 - Level: A1 , Salary: $ 14050 
Payment Slip for Worker 363 - Level: A1 , Salary: $ 14075 
Payment Slip for Worker 364 - Level: A1 , Salary: $ 14100 
Payment Slip for Worker 365 - Level: A1 , Salary: $ 14125 
Payment Slip for Worker 366 - Level: A1 , Salary: $ 14150 
Payment Slip for Worker 367 - Level: A1 , Salary: $ 14175 
Payment Slip for Worker 368 - Level: A1 , Salary: $ 14200 
Payment Slip for Worker 369 - Level: A1 , Salary: $ 14225 
Payment Slip for Worker 370 - Level: A1 , Salary: $ 14250 
Payment Slip for Worker 371 - Level: A1 , Salary: $ 14275 
Payment Slip for Worker 372 - Level: A1 , Salary: $ 14300 
Payment Slip for Worker 373 - Level: A1 , Salary: $ 14325 
Payment Slip for Worker 374 - Level: A1 , Salary: $ 14350 
Payment Slip for Worker 375 - Level: A1 , Salary: $ 14375 
Payment Slip for Worker 376 - Level: A1 , Salary: $ 14400 
Payment Slip for Worker 377 - Level: A1 , Salary: $ 14425 
Payment Slip for Worker 378 - Level: A1 , Salary: $ 14450 
Payment Slip for Worker 379 - Level: A1 , Salary: $ 14475 
Payment Slip for Worker 380 - Level: A1 , Salary: $ 14500 
Payment Slip for Worker 381 - Level: A1 , Salary: $ 14525 
Payment Slip for Worker 382 - Level: A1 , Salary: $ 14550 
Payment Slip for Worker 383 - Level: A1 , Salary: $ 14575 
Payment Slip for Worker 384 - Level: A1 , Salary: $ 14600 
Payment Slip for Worker 385 - Level: A1 , Salary: $ 14625 
Payment Slip for Worker 386 - Level: A1 , Salary: $ 14650 
Payment Slip for Worker 387 - Level: A1 , Salary: $ 14675 
Payment Slip for Worker 388 - Level: A1 , Salary: $ 14700 
Payment Slip for Worker 389 - Level: A1 , Salary: $ 14725 
Payment Slip for Worker 390 - Level: A1 , Salary: $ 14750 
Payment Slip for Worker 391 - Level: A1 , Salary: $ 14775 
Payment Slip for Worker 392 - Level: A1 , Salary: $ 14800 
Payment Slip for Worker 393 - Level: A1 , Salary: $ 14825 
Payment Slip for Worker 394 - Level: A1 , Salary: $ 14850 
Payment Slip for Worker 395 - Level: A1 , Salary: $ 14875 
Payment Slip for Worker 396 - Level: A1 , Salary: $ 14900 
Payment Slip for Worker 397 - Level: A1 , Salary: $ 14925 
Payment Slip for Worker 398 - Level: A1 , Salary: $ 14950 
Payment Slip for Worker 399 - Level: A1 , Salary: $ 14975 
Payment Slip for Worker 400 - Level: A1 , Salary: $ 15000 
> save.image("C:\\Users\\leoli\\Desktop\\workers weekly payment. R")
> save.image("C:\\Users\\leoli\\Desktop\\workers weekly payment.R")
> 
