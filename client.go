package main

import (
       "github.com/jmcvetta/napping"
       "log"
       "fmt"
       "os"
)

type Data struct {
     Input string
     Output []string
}

func main() {

     args := os.Args

     if len(args) > 1{
          result := Data{}
          api_url := "http://diacritic.braincandy.com.ar/api/char/"
          url := fmt.Sprint(api_url, args[1])

          resp, err := napping.Get(url, nil, &result, nil)
          if err != nil {
     	     log.Fatal(err)
          }

          if resp.Status() == 200 {
             for _, c := range result.Output {
                 fmt.Printf("%s ", c)
             }
          }
     } else {
          fmt.Printf("Usage: %s [char]", args[0])
     }
     fmt.Println("")
}
