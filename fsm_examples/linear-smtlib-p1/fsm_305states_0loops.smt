; 
(set-info :status unknown)
(declare-fun time-to-state (Int) Int)
(declare-fun var0_0 (Int) Int)
(assert
 (forall ((time Int) )(let (($x1247 (<= time 160)))
 (let (($x1255 (= (var0_0 (+ time 1)) (+ (var0_0 time) 1))))
 (let (($x10 (= (var0_0 0) 0)))
 (let (($x1867 (and (and (and (= (time-to-state 0) 0) $x10) $x10) (and (= (time-to-state (+ time 1)) 1) $x1255))))
 (let (($x1869 (and (and $x1867 (and (= (time-to-state (+ time 1)) 2) $x1255)) (and (= (time-to-state (+ time 1)) 3) $x1255))))
 (let (($x1871 (and (and $x1869 (and (= (time-to-state (+ time 1)) 4) $x1255)) (and (= (time-to-state (+ time 1)) 5) $x1255))))
 (let (($x1873 (and (and $x1871 (and (= (time-to-state (+ time 1)) 6) $x1255)) (and (= (time-to-state (+ time 1)) 7) $x1255))))
 (let (($x1875 (and (and $x1873 (and (= (time-to-state (+ time 1)) 8) $x1255)) (and (= (time-to-state (+ time 1)) 9) $x1255))))
 (let (($x1877 (and (and $x1875 (and (= (time-to-state (+ time 1)) 10) $x1255)) (and (= (time-to-state (+ time 1)) 11) $x1255))))
 (let (($x1879 (and (and $x1877 (and (= (time-to-state (+ time 1)) 12) $x1255)) (and (= (time-to-state (+ time 1)) 13) $x1255))))
 (let (($x1881 (and (and $x1879 (and (= (time-to-state (+ time 1)) 14) $x1255)) (and (= (time-to-state (+ time 1)) 15) $x1255))))
 (let (($x1883 (and (and $x1881 (and (= (time-to-state (+ time 1)) 16) $x1255)) (and (= (time-to-state (+ time 1)) 17) $x1255))))
 (let (($x1885 (and (and $x1883 (and (= (time-to-state (+ time 1)) 18) $x1255)) (and (= (time-to-state (+ time 1)) 19) $x1255))))
 (let (($x1887 (and (and $x1885 (and (= (time-to-state (+ time 1)) 20) $x1255)) (and (= (time-to-state (+ time 1)) 21) $x1255))))
 (let (($x1889 (and (and $x1887 (and (= (time-to-state (+ time 1)) 22) $x1255)) (and (= (time-to-state (+ time 1)) 23) $x1255))))
 (let (($x1891 (and (and $x1889 (and (= (time-to-state (+ time 1)) 24) $x1255)) (and (= (time-to-state (+ time 1)) 25) $x1255))))
 (let (($x1893 (and (and $x1891 (and (= (time-to-state (+ time 1)) 26) $x1255)) (and (= (time-to-state (+ time 1)) 27) $x1255))))
 (let (($x1895 (and (and $x1893 (and (= (time-to-state (+ time 1)) 28) $x1255)) (and (= (time-to-state (+ time 1)) 29) $x1255))))
 (let (($x1897 (and (and $x1895 (and (= (time-to-state (+ time 1)) 30) $x1255)) (and (= (time-to-state (+ time 1)) 31) $x1255))))
 (let (($x1899 (and (and $x1897 (and (= (time-to-state (+ time 1)) 32) $x1255)) (and (= (time-to-state (+ time 1)) 33) $x1255))))
 (let (($x1901 (and (and $x1899 (and (= (time-to-state (+ time 1)) 34) $x1255)) (and (= (time-to-state (+ time 1)) 35) $x1255))))
 (let (($x1903 (and (and $x1901 (and (= (time-to-state (+ time 1)) 36) $x1255)) (and (= (time-to-state (+ time 1)) 37) $x1255))))
 (let (($x1905 (and (and $x1903 (and (= (time-to-state (+ time 1)) 38) $x1255)) (and (= (time-to-state (+ time 1)) 39) $x1255))))
 (let (($x1907 (and (and $x1905 (and (= (time-to-state (+ time 1)) 40) $x1255)) (and (= (time-to-state (+ time 1)) 41) $x1255))))
 (let (($x1909 (and (and $x1907 (and (= (time-to-state (+ time 1)) 42) $x1255)) (and (= (time-to-state (+ time 1)) 43) $x1255))))
 (let (($x1911 (and (and $x1909 (and (= (time-to-state (+ time 1)) 44) $x1255)) (and (= (time-to-state (+ time 1)) 45) $x1255))))
 (let (($x1913 (and (and $x1911 (and (= (time-to-state (+ time 1)) 46) $x1255)) (and (= (time-to-state (+ time 1)) 47) $x1255))))
 (let (($x1915 (and (and $x1913 (and (= (time-to-state (+ time 1)) 48) $x1255)) (and (= (time-to-state (+ time 1)) 49) $x1255))))
 (let (($x1917 (and (and $x1915 (and (= (time-to-state (+ time 1)) 50) $x1255)) (and (= (time-to-state (+ time 1)) 51) $x1255))))
 (let (($x1919 (and (and $x1917 (and (= (time-to-state (+ time 1)) 52) $x1255)) (and (= (time-to-state (+ time 1)) 53) $x1255))))
 (let (($x1921 (and (and $x1919 (and (= (time-to-state (+ time 1)) 54) $x1255)) (and (= (time-to-state (+ time 1)) 55) $x1255))))
 (let (($x1923 (and (and $x1921 (and (= (time-to-state (+ time 1)) 56) $x1255)) (and (= (time-to-state (+ time 1)) 57) $x1255))))
 (let (($x1925 (and (and $x1923 (and (= (time-to-state (+ time 1)) 58) $x1255)) (and (= (time-to-state (+ time 1)) 59) $x1255))))
 (let (($x1927 (and (and $x1925 (and (= (time-to-state (+ time 1)) 60) $x1255)) (and (= (time-to-state (+ time 1)) 61) $x1255))))
 (let (($x1929 (and (and $x1927 (and (= (time-to-state (+ time 1)) 62) $x1255)) (and (= (time-to-state (+ time 1)) 63) $x1255))))
 (let (($x1931 (and (and $x1929 (and (= (time-to-state (+ time 1)) 64) $x1255)) (and (= (time-to-state (+ time 1)) 65) $x1255))))
 (let (($x1933 (and (and $x1931 (and (= (time-to-state (+ time 1)) 66) $x1255)) (and (= (time-to-state (+ time 1)) 67) $x1255))))
 (let (($x1935 (and (and $x1933 (and (= (time-to-state (+ time 1)) 68) $x1255)) (and (= (time-to-state (+ time 1)) 69) $x1255))))
 (let (($x1937 (and (and $x1935 (and (= (time-to-state (+ time 1)) 70) $x1255)) (and (= (time-to-state (+ time 1)) 71) $x1255))))
 (let (($x1939 (and (and $x1937 (and (= (time-to-state (+ time 1)) 72) $x1255)) (and (= (time-to-state (+ time 1)) 73) $x1255))))
 (let (($x1941 (and (and $x1939 (and (= (time-to-state (+ time 1)) 74) $x1255)) (and (= (time-to-state (+ time 1)) 75) $x1255))))
 (let (($x1943 (and (and $x1941 (and (= (time-to-state (+ time 1)) 76) $x1255)) (and (= (time-to-state (+ time 1)) 77) $x1255))))
 (let (($x1945 (and (and $x1943 (and (= (time-to-state (+ time 1)) 78) $x1255)) (and (= (time-to-state (+ time 1)) 79) $x1255))))
 (let (($x1947 (and (and $x1945 (and (= (time-to-state (+ time 1)) 80) $x1255)) (and (= (time-to-state (+ time 1)) 81) $x1255))))
 (let (($x1949 (and (and $x1947 (and (= (time-to-state (+ time 1)) 82) $x1255)) (and (= (time-to-state (+ time 1)) 83) $x1255))))
 (let (($x1951 (and (and $x1949 (and (= (time-to-state (+ time 1)) 84) $x1255)) (and (= (time-to-state (+ time 1)) 85) $x1255))))
 (let (($x1953 (and (and $x1951 (and (= (time-to-state (+ time 1)) 86) $x1255)) (and (= (time-to-state (+ time 1)) 87) $x1255))))
 (let (($x1955 (and (and $x1953 (and (= (time-to-state (+ time 1)) 88) $x1255)) (and (= (time-to-state (+ time 1)) 89) $x1255))))
 (let (($x1957 (and (and $x1955 (and (= (time-to-state (+ time 1)) 90) $x1255)) (and (= (time-to-state (+ time 1)) 91) $x1255))))
 (let (($x1959 (and (and $x1957 (and (= (time-to-state (+ time 1)) 92) $x1255)) (and (= (time-to-state (+ time 1)) 93) $x1255))))
 (let (($x1961 (and (and $x1959 (and (= (time-to-state (+ time 1)) 94) $x1255)) (and (= (time-to-state (+ time 1)) 95) $x1255))))
 (let (($x1963 (and (and $x1961 (and (= (time-to-state (+ time 1)) 96) $x1255)) (and (= (time-to-state (+ time 1)) 97) $x1255))))
 (let (($x1965 (and (and $x1963 (and (= (time-to-state (+ time 1)) 98) $x1255)) (and (= (time-to-state (+ time 1)) 99) $x1255))))
 (let (($x1967 (and (and $x1965 (and (= (time-to-state (+ time 1)) 100) $x1255)) (and (= (time-to-state (+ time 1)) 101) $x1255))))
 (let (($x1969 (and (and $x1967 (and (= (time-to-state (+ time 1)) 102) $x1255)) (and (= (time-to-state (+ time 1)) 103) $x1255))))
 (let (($x1971 (and (and $x1969 (and (= (time-to-state (+ time 1)) 104) $x1255)) (and (= (time-to-state (+ time 1)) 105) $x1255))))
 (let (($x1973 (and (and $x1971 (and (= (time-to-state (+ time 1)) 106) $x1255)) (and (= (time-to-state (+ time 1)) 107) $x1255))))
 (let (($x1975 (and (and $x1973 (and (= (time-to-state (+ time 1)) 108) $x1255)) (and (= (time-to-state (+ time 1)) 109) $x1255))))
 (let (($x1977 (and (and $x1975 (and (= (time-to-state (+ time 1)) 110) $x1255)) (and (= (time-to-state (+ time 1)) 111) $x1255))))
 (let (($x1979 (and (and $x1977 (and (= (time-to-state (+ time 1)) 112) $x1255)) (and (= (time-to-state (+ time 1)) 113) $x1255))))
 (let (($x1981 (and (and $x1979 (and (= (time-to-state (+ time 1)) 114) $x1255)) (and (= (time-to-state (+ time 1)) 115) $x1255))))
 (let (($x1983 (and (and $x1981 (and (= (time-to-state (+ time 1)) 116) $x1255)) (and (= (time-to-state (+ time 1)) 117) $x1255))))
 (let (($x1985 (and (and $x1983 (and (= (time-to-state (+ time 1)) 118) $x1255)) (and (= (time-to-state (+ time 1)) 119) $x1255))))
 (let (($x1987 (and (and $x1985 (and (= (time-to-state (+ time 1)) 120) $x1255)) (and (= (time-to-state (+ time 1)) 121) $x1255))))
 (let (($x1989 (and (and $x1987 (and (= (time-to-state (+ time 1)) 122) $x1255)) (and (= (time-to-state (+ time 1)) 123) $x1255))))
 (let (($x1991 (and (and $x1989 (and (= (time-to-state (+ time 1)) 124) $x1255)) (and (= (time-to-state (+ time 1)) 125) $x1255))))
 (let (($x1993 (and (and $x1991 (and (= (time-to-state (+ time 1)) 126) $x1255)) (and (= (time-to-state (+ time 1)) 127) $x1255))))
 (let (($x1995 (and (and $x1993 (and (= (time-to-state (+ time 1)) 128) $x1255)) (and (= (time-to-state (+ time 1)) 129) $x1255))))
 (let (($x1997 (and (and $x1995 (and (= (time-to-state (+ time 1)) 130) $x1255)) (and (= (time-to-state (+ time 1)) 131) $x1255))))
 (let (($x1999 (and (and $x1997 (and (= (time-to-state (+ time 1)) 132) $x1255)) (and (= (time-to-state (+ time 1)) 133) $x1255))))
 (let (($x2001 (and (and $x1999 (and (= (time-to-state (+ time 1)) 134) $x1255)) (and (= (time-to-state (+ time 1)) 135) $x1255))))
 (let (($x2003 (and (and $x2001 (and (= (time-to-state (+ time 1)) 136) $x1255)) (and (= (time-to-state (+ time 1)) 137) $x1255))))
 (let (($x2005 (and (and $x2003 (and (= (time-to-state (+ time 1)) 138) $x1255)) (and (= (time-to-state (+ time 1)) 139) $x1255))))
 (let (($x2007 (and (and $x2005 (and (= (time-to-state (+ time 1)) 140) $x1255)) (and (= (time-to-state (+ time 1)) 141) $x1255))))
 (let (($x2009 (and (and $x2007 (and (= (time-to-state (+ time 1)) 142) $x1255)) (and (= (time-to-state (+ time 1)) 143) $x1255))))
 (let (($x2011 (and (and $x2009 (and (= (time-to-state (+ time 1)) 144) $x1255)) (and (= (time-to-state (+ time 1)) 145) $x1255))))
 (let (($x2013 (and (and $x2011 (and (= (time-to-state (+ time 1)) 146) $x1255)) (and (= (time-to-state (+ time 1)) 147) $x1255))))
 (let (($x2015 (and (and $x2013 (and (= (time-to-state (+ time 1)) 148) $x1255)) (and (= (time-to-state (+ time 1)) 149) $x1255))))
 (let (($x2017 (and (and $x2015 (and (= (time-to-state (+ time 1)) 150) $x1255)) (and (= (time-to-state (+ time 1)) 151) $x1255))))
 (let (($x2019 (and (and $x2017 (and (= (time-to-state (+ time 1)) 152) $x1255)) (and (= (time-to-state (+ time 1)) 153) $x1255))))
 (let (($x2021 (and (and $x2019 (and (= (time-to-state (+ time 1)) 154) $x1255)) (and (= (time-to-state (+ time 1)) 155) $x1255))))
 (let (($x2023 (and (and $x2021 (and (= (time-to-state (+ time 1)) 156) $x1255)) (and (= (time-to-state (+ time 1)) 157) $x1255))))
 (let (($x2025 (and (and $x2023 (and (= (time-to-state (+ time 1)) 158) $x1255)) (and (= (time-to-state (+ time 1)) 159) $x1255))))
 (let (($x2027 (and (and $x2025 (and (= (time-to-state (+ time 1)) 160) $x1255)) (and (= (time-to-state (+ time 1)) 161) $x1255))))
 (let (($x2029 (and (and $x2027 (and (= (time-to-state (+ time 1)) 162) $x1255)) (and (= (time-to-state (+ time 1)) 163) $x1255))))
 (let (($x2031 (and (and $x2029 (and (= (time-to-state (+ time 1)) 164) $x1255)) (and (= (time-to-state (+ time 1)) 165) $x1255))))
 (let (($x2033 (and (and $x2031 (and (= (time-to-state (+ time 1)) 166) $x1255)) (and (= (time-to-state (+ time 1)) 167) $x1255))))
 (let (($x2035 (and (and $x2033 (and (= (time-to-state (+ time 1)) 168) $x1255)) (and (= (time-to-state (+ time 1)) 169) $x1255))))
 (let (($x2037 (and (and $x2035 (and (= (time-to-state (+ time 1)) 170) $x1255)) (and (= (time-to-state (+ time 1)) 171) $x1255))))
 (let (($x2039 (and (and $x2037 (and (= (time-to-state (+ time 1)) 172) $x1255)) (and (= (time-to-state (+ time 1)) 173) $x1255))))
 (let (($x2041 (and (and $x2039 (and (= (time-to-state (+ time 1)) 174) $x1255)) (and (= (time-to-state (+ time 1)) 175) $x1255))))
 (let (($x2043 (and (and $x2041 (and (= (time-to-state (+ time 1)) 176) $x1255)) (and (= (time-to-state (+ time 1)) 177) $x1255))))
 (let (($x2045 (and (and $x2043 (and (= (time-to-state (+ time 1)) 178) $x1255)) (and (= (time-to-state (+ time 1)) 179) $x1255))))
 (let (($x2047 (and (and $x2045 (and (= (time-to-state (+ time 1)) 180) $x1255)) (and (= (time-to-state (+ time 1)) 181) $x1255))))
 (let (($x2049 (and (and $x2047 (and (= (time-to-state (+ time 1)) 182) $x1255)) (and (= (time-to-state (+ time 1)) 183) $x1255))))
 (let (($x2051 (and (and $x2049 (and (= (time-to-state (+ time 1)) 184) $x1255)) (and (= (time-to-state (+ time 1)) 185) $x1255))))
 (let (($x2053 (and (and $x2051 (and (= (time-to-state (+ time 1)) 186) $x1255)) (and (= (time-to-state (+ time 1)) 187) $x1255))))
 (let (($x2055 (and (and $x2053 (and (= (time-to-state (+ time 1)) 188) $x1255)) (and (= (time-to-state (+ time 1)) 189) $x1255))))
 (let (($x2057 (and (and $x2055 (and (= (time-to-state (+ time 1)) 190) $x1255)) (and (= (time-to-state (+ time 1)) 191) $x1255))))
 (let (($x2059 (and (and $x2057 (and (= (time-to-state (+ time 1)) 192) $x1255)) (and (= (time-to-state (+ time 1)) 193) $x1255))))
 (let (($x2061 (and (and $x2059 (and (= (time-to-state (+ time 1)) 194) $x1255)) (and (= (time-to-state (+ time 1)) 195) $x1255))))
 (let (($x2063 (and (and $x2061 (and (= (time-to-state (+ time 1)) 196) $x1255)) (and (= (time-to-state (+ time 1)) 197) $x1255))))
 (let (($x2065 (and (and $x2063 (and (= (time-to-state (+ time 1)) 198) $x1255)) (and (= (time-to-state (+ time 1)) 199) $x1255))))
 (let (($x2067 (and (and $x2065 (and (= (time-to-state (+ time 1)) 200) $x1255)) (and (= (time-to-state (+ time 1)) 201) $x1255))))
 (let (($x2069 (and (and $x2067 (and (= (time-to-state (+ time 1)) 202) $x1255)) (and (= (time-to-state (+ time 1)) 203) $x1255))))
 (let (($x2071 (and (and $x2069 (and (= (time-to-state (+ time 1)) 204) $x1255)) (and (= (time-to-state (+ time 1)) 205) $x1255))))
 (let (($x2073 (and (and $x2071 (and (= (time-to-state (+ time 1)) 206) $x1255)) (and (= (time-to-state (+ time 1)) 207) $x1255))))
 (let (($x2075 (and (and $x2073 (and (= (time-to-state (+ time 1)) 208) $x1255)) (and (= (time-to-state (+ time 1)) 209) $x1255))))
 (let (($x2077 (and (and $x2075 (and (= (time-to-state (+ time 1)) 210) $x1255)) (and (= (time-to-state (+ time 1)) 211) $x1255))))
 (let (($x2079 (and (and $x2077 (and (= (time-to-state (+ time 1)) 212) $x1255)) (and (= (time-to-state (+ time 1)) 213) $x1255))))
 (let (($x2081 (and (and $x2079 (and (= (time-to-state (+ time 1)) 214) $x1255)) (and (= (time-to-state (+ time 1)) 215) $x1255))))
 (let (($x2083 (and (and $x2081 (and (= (time-to-state (+ time 1)) 216) $x1255)) (and (= (time-to-state (+ time 1)) 217) $x1255))))
 (let (($x2085 (and (and $x2083 (and (= (time-to-state (+ time 1)) 218) $x1255)) (and (= (time-to-state (+ time 1)) 219) $x1255))))
 (let (($x2087 (and (and $x2085 (and (= (time-to-state (+ time 1)) 220) $x1255)) (and (= (time-to-state (+ time 1)) 221) $x1255))))
 (let (($x2089 (and (and $x2087 (and (= (time-to-state (+ time 1)) 222) $x1255)) (and (= (time-to-state (+ time 1)) 223) $x1255))))
 (let (($x2091 (and (and $x2089 (and (= (time-to-state (+ time 1)) 224) $x1255)) (and (= (time-to-state (+ time 1)) 225) $x1255))))
 (let (($x2093 (and (and $x2091 (and (= (time-to-state (+ time 1)) 226) $x1255)) (and (= (time-to-state (+ time 1)) 227) $x1255))))
 (let (($x2095 (and (and $x2093 (and (= (time-to-state (+ time 1)) 228) $x1255)) (and (= (time-to-state (+ time 1)) 229) $x1255))))
 (let (($x2097 (and (and $x2095 (and (= (time-to-state (+ time 1)) 230) $x1255)) (and (= (time-to-state (+ time 1)) 231) $x1255))))
 (let (($x2099 (and (and $x2097 (and (= (time-to-state (+ time 1)) 232) $x1255)) (and (= (time-to-state (+ time 1)) 233) $x1255))))
 (let (($x2101 (and (and $x2099 (and (= (time-to-state (+ time 1)) 234) $x1255)) (and (= (time-to-state (+ time 1)) 235) $x1255))))
 (let (($x2103 (and (and $x2101 (and (= (time-to-state (+ time 1)) 236) $x1255)) (and (= (time-to-state (+ time 1)) 237) $x1255))))
 (let (($x2105 (and (and $x2103 (and (= (time-to-state (+ time 1)) 238) $x1255)) (and (= (time-to-state (+ time 1)) 239) $x1255))))
 (let (($x2107 (and (and $x2105 (and (= (time-to-state (+ time 1)) 240) $x1255)) (and (= (time-to-state (+ time 1)) 241) $x1255))))
 (let (($x2109 (and (and $x2107 (and (= (time-to-state (+ time 1)) 242) $x1255)) (and (= (time-to-state (+ time 1)) 243) $x1255))))
 (let (($x2111 (and (and $x2109 (and (= (time-to-state (+ time 1)) 244) $x1255)) (and (= (time-to-state (+ time 1)) 245) $x1255))))
 (let (($x2113 (and (and $x2111 (and (= (time-to-state (+ time 1)) 246) $x1255)) (and (= (time-to-state (+ time 1)) 247) $x1255))))
 (let (($x2115 (and (and $x2113 (and (= (time-to-state (+ time 1)) 248) $x1255)) (and (= (time-to-state (+ time 1)) 249) $x1255))))
 (let (($x2117 (and (and $x2115 (and (= (time-to-state (+ time 1)) 250) $x1255)) (and (= (time-to-state (+ time 1)) 251) $x1255))))
 (let (($x2119 (and (and $x2117 (and (= (time-to-state (+ time 1)) 252) $x1255)) (and (= (time-to-state (+ time 1)) 253) $x1255))))
 (let (($x2121 (and (and $x2119 (and (= (time-to-state (+ time 1)) 254) $x1255)) (and (= (time-to-state (+ time 1)) 255) $x1255))))
 (let (($x2123 (and (and $x2121 (and (= (time-to-state (+ time 1)) 256) $x1255)) (and (= (time-to-state (+ time 1)) 257) $x1255))))
 (let (($x2125 (and (and $x2123 (and (= (time-to-state (+ time 1)) 258) $x1255)) (and (= (time-to-state (+ time 1)) 259) $x1255))))
 (let (($x2127 (and (and $x2125 (and (= (time-to-state (+ time 1)) 260) $x1255)) (and (= (time-to-state (+ time 1)) 261) $x1255))))
 (let (($x2129 (and (and $x2127 (and (= (time-to-state (+ time 1)) 262) $x1255)) (and (= (time-to-state (+ time 1)) 263) $x1255))))
 (let (($x2131 (and (and $x2129 (and (= (time-to-state (+ time 1)) 264) $x1255)) (and (= (time-to-state (+ time 1)) 265) $x1255))))
 (let (($x2133 (and (and $x2131 (and (= (time-to-state (+ time 1)) 266) $x1255)) (and (= (time-to-state (+ time 1)) 267) $x1255))))
 (let (($x2135 (and (and $x2133 (and (= (time-to-state (+ time 1)) 268) $x1255)) (and (= (time-to-state (+ time 1)) 269) $x1255))))
 (let (($x2137 (and (and $x2135 (and (= (time-to-state (+ time 1)) 270) $x1255)) (and (= (time-to-state (+ time 1)) 271) $x1255))))
 (let (($x2139 (and (and $x2137 (and (= (time-to-state (+ time 1)) 272) $x1255)) (and (= (time-to-state (+ time 1)) 273) $x1255))))
 (let (($x2141 (and (and $x2139 (and (= (time-to-state (+ time 1)) 274) $x1255)) (and (= (time-to-state (+ time 1)) 275) $x1255))))
 (let (($x2143 (and (and $x2141 (and (= (time-to-state (+ time 1)) 276) $x1255)) (and (= (time-to-state (+ time 1)) 277) $x1255))))
 (let (($x2145 (and (and $x2143 (and (= (time-to-state (+ time 1)) 278) $x1255)) (and (= (time-to-state (+ time 1)) 279) $x1255))))
 (let (($x2147 (and (and $x2145 (and (= (time-to-state (+ time 1)) 280) $x1255)) (and (= (time-to-state (+ time 1)) 281) $x1255))))
 (let (($x2149 (and (and $x2147 (and (= (time-to-state (+ time 1)) 282) $x1255)) (and (= (time-to-state (+ time 1)) 283) $x1255))))
 (let (($x2151 (and (and $x2149 (and (= (time-to-state (+ time 1)) 284) $x1255)) (and (= (time-to-state (+ time 1)) 285) $x1255))))
 (let (($x2153 (and (and $x2151 (and (= (time-to-state (+ time 1)) 286) $x1255)) (and (= (time-to-state (+ time 1)) 287) $x1255))))
 (let (($x2155 (and (and $x2153 (and (= (time-to-state (+ time 1)) 288) $x1255)) (and (= (time-to-state (+ time 1)) 289) $x1255))))
 (let (($x2157 (and (and $x2155 (and (= (time-to-state (+ time 1)) 290) $x1255)) (and (= (time-to-state (+ time 1)) 291) $x1255))))
 (let (($x2159 (and (and $x2157 (and (= (time-to-state (+ time 1)) 292) $x1255)) (and (= (time-to-state (+ time 1)) 293) $x1255))))
 (let (($x2161 (and (and $x2159 (and (= (time-to-state (+ time 1)) 294) $x1255)) (and (= (time-to-state (+ time 1)) 295) $x1255))))
 (let (($x2163 (and (and $x2161 (and (= (time-to-state (+ time 1)) 296) $x1255)) (and (= (time-to-state (+ time 1)) 297) $x1255))))
 (let (($x2165 (and (and $x2163 (and (= (time-to-state (+ time 1)) 298) $x1255)) (and (= (time-to-state (+ time 1)) 299) $x1255))))
 (let (($x2167 (and (and $x2165 (and (= (time-to-state (+ time 1)) 300) $x1255)) (and (= (time-to-state (+ time 1)) 301) $x1255))))
 (let (($x2169 (and (and $x2167 (and (= (time-to-state (+ time 1)) 302) $x1255)) (and (= (time-to-state (+ time 1)) 303) $x1255))))
 (let (($x2171 (and (and $x2169 (and (= (time-to-state (+ time 1)) 304) $x1255)) (and (= (time-to-state (+ time 1)) 305) $x1255))))
 (and (and (and $x2171 (and (distinct (time-to-state time) 304) true)) (> time 0)) $x1247))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
