#!/usr/bin/env bash

mono --version

cat <<EOS >HelloWorld.cs
using System;

namespace HelloWorld{
  class Helloworld{
    static void Main(){
      Console.WriteLine("hello world");
    }
  }
}
EOS

mcs HelloWorld.cs && mono HelloWorld.exe

rm -f HelloWorld.cs mono HelloWorld.exe
