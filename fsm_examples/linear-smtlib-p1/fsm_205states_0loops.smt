; 
(set-info :status unknown)
(declare-fun time-to-state (Int) Int)
(declare-fun var0_0 (Int) Int)
(assert
 (forall ((time Int) )(let (($x847 (<= time 160)))
 (let (($x855 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let (($x10 (= (var0_0 0) 0)))
 (let (($x1267 (and (and (and (= (time-to-state 0) 0) $x10) $x10) (and (= (time-to-state (+ time 1)) 1) $x855))))
 (let (($x1269 (and (and $x1267 (and (= (time-to-state (+ time 1)) 2) $x855)) (and (= (time-to-state (+ time 1)) 3) $x855))))
 (let (($x1271 (and (and $x1269 (and (= (time-to-state (+ time 1)) 4) $x855)) (and (= (time-to-state (+ time 1)) 5) $x855))))
 (let (($x1273 (and (and $x1271 (and (= (time-to-state (+ time 1)) 6) $x855)) (and (= (time-to-state (+ time 1)) 7) $x855))))
 (let (($x1275 (and (and $x1273 (and (= (time-to-state (+ time 1)) 8) $x855)) (and (= (time-to-state (+ time 1)) 9) $x855))))
 (let (($x1277 (and (and $x1275 (and (= (time-to-state (+ time 1)) 10) $x855)) (and (= (time-to-state (+ time 1)) 11) $x855))))
 (let (($x1279 (and (and $x1277 (and (= (time-to-state (+ time 1)) 12) $x855)) (and (= (time-to-state (+ time 1)) 13) $x855))))
 (let (($x1281 (and (and $x1279 (and (= (time-to-state (+ time 1)) 14) $x855)) (and (= (time-to-state (+ time 1)) 15) $x855))))
 (let (($x1283 (and (and $x1281 (and (= (time-to-state (+ time 1)) 16) $x855)) (and (= (time-to-state (+ time 1)) 17) $x855))))
 (let (($x1285 (and (and $x1283 (and (= (time-to-state (+ time 1)) 18) $x855)) (and (= (time-to-state (+ time 1)) 19) $x855))))
 (let (($x1287 (and (and $x1285 (and (= (time-to-state (+ time 1)) 20) $x855)) (and (= (time-to-state (+ time 1)) 21) $x855))))
 (let (($x1289 (and (and $x1287 (and (= (time-to-state (+ time 1)) 22) $x855)) (and (= (time-to-state (+ time 1)) 23) $x855))))
 (let (($x1291 (and (and $x1289 (and (= (time-to-state (+ time 1)) 24) $x855)) (and (= (time-to-state (+ time 1)) 25) $x855))))
 (let (($x1293 (and (and $x1291 (and (= (time-to-state (+ time 1)) 26) $x855)) (and (= (time-to-state (+ time 1)) 27) $x855))))
 (let (($x1295 (and (and $x1293 (and (= (time-to-state (+ time 1)) 28) $x855)) (and (= (time-to-state (+ time 1)) 29) $x855))))
 (let (($x1297 (and (and $x1295 (and (= (time-to-state (+ time 1)) 30) $x855)) (and (= (time-to-state (+ time 1)) 31) $x855))))
 (let (($x1299 (and (and $x1297 (and (= (time-to-state (+ time 1)) 32) $x855)) (and (= (time-to-state (+ time 1)) 33) $x855))))
 (let (($x1301 (and (and $x1299 (and (= (time-to-state (+ time 1)) 34) $x855)) (and (= (time-to-state (+ time 1)) 35) $x855))))
 (let (($x1303 (and (and $x1301 (and (= (time-to-state (+ time 1)) 36) $x855)) (and (= (time-to-state (+ time 1)) 37) $x855))))
 (let (($x1305 (and (and $x1303 (and (= (time-to-state (+ time 1)) 38) $x855)) (and (= (time-to-state (+ time 1)) 39) $x855))))
 (let (($x1307 (and (and $x1305 (and (= (time-to-state (+ time 1)) 40) $x855)) (and (= (time-to-state (+ time 1)) 41) $x855))))
 (let (($x1309 (and (and $x1307 (and (= (time-to-state (+ time 1)) 42) $x855)) (and (= (time-to-state (+ time 1)) 43) $x855))))
 (let (($x1311 (and (and $x1309 (and (= (time-to-state (+ time 1)) 44) $x855)) (and (= (time-to-state (+ time 1)) 45) $x855))))
 (let (($x1313 (and (and $x1311 (and (= (time-to-state (+ time 1)) 46) $x855)) (and (= (time-to-state (+ time 1)) 47) $x855))))
 (let (($x1315 (and (and $x1313 (and (= (time-to-state (+ time 1)) 48) $x855)) (and (= (time-to-state (+ time 1)) 49) $x855))))
 (let (($x1317 (and (and $x1315 (and (= (time-to-state (+ time 1)) 50) $x855)) (and (= (time-to-state (+ time 1)) 51) $x855))))
 (let (($x1319 (and (and $x1317 (and (= (time-to-state (+ time 1)) 52) $x855)) (and (= (time-to-state (+ time 1)) 53) $x855))))
 (let (($x1321 (and (and $x1319 (and (= (time-to-state (+ time 1)) 54) $x855)) (and (= (time-to-state (+ time 1)) 55) $x855))))
 (let (($x1323 (and (and $x1321 (and (= (time-to-state (+ time 1)) 56) $x855)) (and (= (time-to-state (+ time 1)) 57) $x855))))
 (let (($x1325 (and (and $x1323 (and (= (time-to-state (+ time 1)) 58) $x855)) (and (= (time-to-state (+ time 1)) 59) $x855))))
 (let (($x1327 (and (and $x1325 (and (= (time-to-state (+ time 1)) 60) $x855)) (and (= (time-to-state (+ time 1)) 61) $x855))))
 (let (($x1329 (and (and $x1327 (and (= (time-to-state (+ time 1)) 62) $x855)) (and (= (time-to-state (+ time 1)) 63) $x855))))
 (let (($x1331 (and (and $x1329 (and (= (time-to-state (+ time 1)) 64) $x855)) (and (= (time-to-state (+ time 1)) 65) $x855))))
 (let (($x1333 (and (and $x1331 (and (= (time-to-state (+ time 1)) 66) $x855)) (and (= (time-to-state (+ time 1)) 67) $x855))))
 (let (($x1335 (and (and $x1333 (and (= (time-to-state (+ time 1)) 68) $x855)) (and (= (time-to-state (+ time 1)) 69) $x855))))
 (let (($x1337 (and (and $x1335 (and (= (time-to-state (+ time 1)) 70) $x855)) (and (= (time-to-state (+ time 1)) 71) $x855))))
 (let (($x1339 (and (and $x1337 (and (= (time-to-state (+ time 1)) 72) $x855)) (and (= (time-to-state (+ time 1)) 73) $x855))))
 (let (($x1341 (and (and $x1339 (and (= (time-to-state (+ time 1)) 74) $x855)) (and (= (time-to-state (+ time 1)) 75) $x855))))
 (let (($x1343 (and (and $x1341 (and (= (time-to-state (+ time 1)) 76) $x855)) (and (= (time-to-state (+ time 1)) 77) $x855))))
 (let (($x1345 (and (and $x1343 (and (= (time-to-state (+ time 1)) 78) $x855)) (and (= (time-to-state (+ time 1)) 79) $x855))))
 (let (($x1347 (and (and $x1345 (and (= (time-to-state (+ time 1)) 80) $x855)) (and (= (time-to-state (+ time 1)) 81) $x855))))
 (let (($x1349 (and (and $x1347 (and (= (time-to-state (+ time 1)) 82) $x855)) (and (= (time-to-state (+ time 1)) 83) $x855))))
 (let (($x1351 (and (and $x1349 (and (= (time-to-state (+ time 1)) 84) $x855)) (and (= (time-to-state (+ time 1)) 85) $x855))))
 (let (($x1353 (and (and $x1351 (and (= (time-to-state (+ time 1)) 86) $x855)) (and (= (time-to-state (+ time 1)) 87) $x855))))
 (let (($x1355 (and (and $x1353 (and (= (time-to-state (+ time 1)) 88) $x855)) (and (= (time-to-state (+ time 1)) 89) $x855))))
 (let (($x1357 (and (and $x1355 (and (= (time-to-state (+ time 1)) 90) $x855)) (and (= (time-to-state (+ time 1)) 91) $x855))))
 (let (($x1359 (and (and $x1357 (and (= (time-to-state (+ time 1)) 92) $x855)) (and (= (time-to-state (+ time 1)) 93) $x855))))
 (let (($x1361 (and (and $x1359 (and (= (time-to-state (+ time 1)) 94) $x855)) (and (= (time-to-state (+ time 1)) 95) $x855))))
 (let (($x1363 (and (and $x1361 (and (= (time-to-state (+ time 1)) 96) $x855)) (and (= (time-to-state (+ time 1)) 97) $x855))))
 (let (($x1365 (and (and $x1363 (and (= (time-to-state (+ time 1)) 98) $x855)) (and (= (time-to-state (+ time 1)) 99) $x855))))
 (let (($x1367 (and (and $x1365 (and (= (time-to-state (+ time 1)) 100) $x855)) (and (= (time-to-state (+ time 1)) 101) $x855))))
 (let (($x1369 (and (and $x1367 (and (= (time-to-state (+ time 1)) 102) $x855)) (and (= (time-to-state (+ time 1)) 103) $x855))))
 (let (($x1371 (and (and $x1369 (and (= (time-to-state (+ time 1)) 104) $x855)) (and (= (time-to-state (+ time 1)) 105) $x855))))
 (let (($x1373 (and (and $x1371 (and (= (time-to-state (+ time 1)) 106) $x855)) (and (= (time-to-state (+ time 1)) 107) $x855))))
 (let (($x1375 (and (and $x1373 (and (= (time-to-state (+ time 1)) 108) $x855)) (and (= (time-to-state (+ time 1)) 109) $x855))))
 (let (($x1377 (and (and $x1375 (and (= (time-to-state (+ time 1)) 110) $x855)) (and (= (time-to-state (+ time 1)) 111) $x855))))
 (let (($x1379 (and (and $x1377 (and (= (time-to-state (+ time 1)) 112) $x855)) (and (= (time-to-state (+ time 1)) 113) $x855))))
 (let (($x1381 (and (and $x1379 (and (= (time-to-state (+ time 1)) 114) $x855)) (and (= (time-to-state (+ time 1)) 115) $x855))))
 (let (($x1383 (and (and $x1381 (and (= (time-to-state (+ time 1)) 116) $x855)) (and (= (time-to-state (+ time 1)) 117) $x855))))
 (let (($x1385 (and (and $x1383 (and (= (time-to-state (+ time 1)) 118) $x855)) (and (= (time-to-state (+ time 1)) 119) $x855))))
 (let (($x1387 (and (and $x1385 (and (= (time-to-state (+ time 1)) 120) $x855)) (and (= (time-to-state (+ time 1)) 121) $x855))))
 (let (($x1389 (and (and $x1387 (and (= (time-to-state (+ time 1)) 122) $x855)) (and (= (time-to-state (+ time 1)) 123) $x855))))
 (let (($x1391 (and (and $x1389 (and (= (time-to-state (+ time 1)) 124) $x855)) (and (= (time-to-state (+ time 1)) 125) $x855))))
 (let (($x1393 (and (and $x1391 (and (= (time-to-state (+ time 1)) 126) $x855)) (and (= (time-to-state (+ time 1)) 127) $x855))))
 (let (($x1395 (and (and $x1393 (and (= (time-to-state (+ time 1)) 128) $x855)) (and (= (time-to-state (+ time 1)) 129) $x855))))
 (let (($x1397 (and (and $x1395 (and (= (time-to-state (+ time 1)) 130) $x855)) (and (= (time-to-state (+ time 1)) 131) $x855))))
 (let (($x1399 (and (and $x1397 (and (= (time-to-state (+ time 1)) 132) $x855)) (and (= (time-to-state (+ time 1)) 133) $x855))))
 (let (($x1401 (and (and $x1399 (and (= (time-to-state (+ time 1)) 134) $x855)) (and (= (time-to-state (+ time 1)) 135) $x855))))
 (let (($x1403 (and (and $x1401 (and (= (time-to-state (+ time 1)) 136) $x855)) (and (= (time-to-state (+ time 1)) 137) $x855))))
 (let (($x1405 (and (and $x1403 (and (= (time-to-state (+ time 1)) 138) $x855)) (and (= (time-to-state (+ time 1)) 139) $x855))))
 (let (($x1407 (and (and $x1405 (and (= (time-to-state (+ time 1)) 140) $x855)) (and (= (time-to-state (+ time 1)) 141) $x855))))
 (let (($x1409 (and (and $x1407 (and (= (time-to-state (+ time 1)) 142) $x855)) (and (= (time-to-state (+ time 1)) 143) $x855))))
 (let (($x1411 (and (and $x1409 (and (= (time-to-state (+ time 1)) 144) $x855)) (and (= (time-to-state (+ time 1)) 145) $x855))))
 (let (($x1413 (and (and $x1411 (and (= (time-to-state (+ time 1)) 146) $x855)) (and (= (time-to-state (+ time 1)) 147) $x855))))
 (let (($x1415 (and (and $x1413 (and (= (time-to-state (+ time 1)) 148) $x855)) (and (= (time-to-state (+ time 1)) 149) $x855))))
 (let (($x1417 (and (and $x1415 (and (= (time-to-state (+ time 1)) 150) $x855)) (and (= (time-to-state (+ time 1)) 151) $x855))))
 (let (($x1419 (and (and $x1417 (and (= (time-to-state (+ time 1)) 152) $x855)) (and (= (time-to-state (+ time 1)) 153) $x855))))
 (let (($x1421 (and (and $x1419 (and (= (time-to-state (+ time 1)) 154) $x855)) (and (= (time-to-state (+ time 1)) 155) $x855))))
 (let (($x1423 (and (and $x1421 (and (= (time-to-state (+ time 1)) 156) $x855)) (and (= (time-to-state (+ time 1)) 157) $x855))))
 (let (($x1425 (and (and $x1423 (and (= (time-to-state (+ time 1)) 158) $x855)) (and (= (time-to-state (+ time 1)) 159) $x855))))
 (let (($x1427 (and (and $x1425 (and (= (time-to-state (+ time 1)) 160) $x855)) (and (= (time-to-state (+ time 1)) 161) $x855))))
 (let (($x1429 (and (and $x1427 (and (= (time-to-state (+ time 1)) 162) $x855)) (and (= (time-to-state (+ time 1)) 163) $x855))))
 (let (($x1431 (and (and $x1429 (and (= (time-to-state (+ time 1)) 164) $x855)) (and (= (time-to-state (+ time 1)) 165) $x855))))
 (let (($x1433 (and (and $x1431 (and (= (time-to-state (+ time 1)) 166) $x855)) (and (= (time-to-state (+ time 1)) 167) $x855))))
 (let (($x1435 (and (and $x1433 (and (= (time-to-state (+ time 1)) 168) $x855)) (and (= (time-to-state (+ time 1)) 169) $x855))))
 (let (($x1437 (and (and $x1435 (and (= (time-to-state (+ time 1)) 170) $x855)) (and (= (time-to-state (+ time 1)) 171) $x855))))
 (let (($x1439 (and (and $x1437 (and (= (time-to-state (+ time 1)) 172) $x855)) (and (= (time-to-state (+ time 1)) 173) $x855))))
 (let (($x1441 (and (and $x1439 (and (= (time-to-state (+ time 1)) 174) $x855)) (and (= (time-to-state (+ time 1)) 175) $x855))))
 (let (($x1443 (and (and $x1441 (and (= (time-to-state (+ time 1)) 176) $x855)) (and (= (time-to-state (+ time 1)) 177) $x855))))
 (let (($x1445 (and (and $x1443 (and (= (time-to-state (+ time 1)) 178) $x855)) (and (= (time-to-state (+ time 1)) 179) $x855))))
 (let (($x1447 (and (and $x1445 (and (= (time-to-state (+ time 1)) 180) $x855)) (and (= (time-to-state (+ time 1)) 181) $x855))))
 (let (($x1449 (and (and $x1447 (and (= (time-to-state (+ time 1)) 182) $x855)) (and (= (time-to-state (+ time 1)) 183) $x855))))
 (let (($x1451 (and (and $x1449 (and (= (time-to-state (+ time 1)) 184) $x855)) (and (= (time-to-state (+ time 1)) 185) $x855))))
 (let (($x1453 (and (and $x1451 (and (= (time-to-state (+ time 1)) 186) $x855)) (and (= (time-to-state (+ time 1)) 187) $x855))))
 (let (($x1455 (and (and $x1453 (and (= (time-to-state (+ time 1)) 188) $x855)) (and (= (time-to-state (+ time 1)) 189) $x855))))
 (let (($x1457 (and (and $x1455 (and (= (time-to-state (+ time 1)) 190) $x855)) (and (= (time-to-state (+ time 1)) 191) $x855))))
 (let (($x1459 (and (and $x1457 (and (= (time-to-state (+ time 1)) 192) $x855)) (and (= (time-to-state (+ time 1)) 193) $x855))))
 (let (($x1461 (and (and $x1459 (and (= (time-to-state (+ time 1)) 194) $x855)) (and (= (time-to-state (+ time 1)) 195) $x855))))
 (let (($x1463 (and (and $x1461 (and (= (time-to-state (+ time 1)) 196) $x855)) (and (= (time-to-state (+ time 1)) 197) $x855))))
 (let (($x1465 (and (and $x1463 (and (= (time-to-state (+ time 1)) 198) $x855)) (and (= (time-to-state (+ time 1)) 199) $x855))))
 (let (($x1467 (and (and $x1465 (and (= (time-to-state (+ time 1)) 200) $x855)) (and (= (time-to-state (+ time 1)) 201) $x855))))
 (let (($x1469 (and (and $x1467 (and (= (time-to-state (+ time 1)) 202) $x855)) (and (= (time-to-state (+ time 1)) 203) $x855))))
 (let (($x1471 (and (and $x1469 (and (= (time-to-state (+ time 1)) 204) $x855)) (and (= (time-to-state (+ time 1)) 205) $x855))))
 (and (and (and $x1471 (and (distinct (time-to-state time) 204) true)) (> time 0)) $x847))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
