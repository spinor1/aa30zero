BEGIN { first = 1; skip = 0; }
{
  if ($1 < 0.6) { # freq range begins at 0.6MHz
    freq[skip++] = $1
  } else if (first) {
    first = 0;
    for(i=0;i<skip;i++) {
      print freq[i], $2, $3;
    }
    print $1, $2, $3;
  } else {
    print $1, $2, $3;
  } 
}
END { }
