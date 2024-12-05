function run {
  echo ""
  echo "Benchmarking $1"
  hyperfine -i --shell=none --runs 3 --warmup 2 "$2"
}

run "Dart" "./dart/code 40"
run "Objective-C" "./objc/code 40"
run "Kotlin" "java -jar kotlin/code.jar 40"
run "C" "./c/code 40"
run "Rust" "./rust/target/release/code 40"
run "Node" "node ./js/code.js 40"
run "Bun" "bun ./js/code.js 40"
run "Bun (Compiled)" "./js/bun 40"
run "Deno" "deno ./js/code.js 40"
run "PyPy" "pypy ./py/code.py 40"
run "CPP" "./cpp/code 40"
run "Go" "./go/code 40"
run "Node (jitless)" "node --jitless ./js/code.js 40"
run "Bun (jitless)" "bun ./js/code.js 40" "BUN_JSC_useJIT=0"
run "Deno (jitless)" "deno --v8-flags=--jitless ./js/code.js 40"
run "PyPy" "pypy ./py/code.py 40"
run "Java" "java jvm.code 40"
#run "Java GraalVM" "./jvm.code 40"
run "Scala" "./scala/code 40"
run "Ruby" "ruby ./ruby/code.rb 40"
run "PHP JIT" "php -dopcache.enable_cli=1 -dopcache.jit=on -dopcache.jit_buffer_size=64M ./php/code.php 40"
run "PHP" "php ./php/code.php 40"
run "R" "Rscript ./r/code.R 40"
run "Python" "python3.13 ./py/code.py 40"
run "Common Lisp" "common-lisp/code 40"
run "Zig" "./zig/code 40"
run "Inko" "./inko/code 40"
run "Nim" "./nim/code 40"
run "Free Pascal" "./fpc/code 40"
run "Crystal" "./crystal/code 40"
#run "Ada" "./ada/code 40"
#run "D" "./d/code 40" # Seems to not have an arm / M1 version
run "Odin" "./odin/code 40"
run "Fortran" "./fortran/code 40"
run "LuaJIT" "luajit ./lua/code 40"
run "Lua" "lua ./lua/code.lua 40"
run "Swift" "./swift/code 40"
run "Julia" "julia ./julia/code.jl 40"
#run "Haxe JVM" "java -jar haxe/code.jar 40" # was getting errors running `haxelib install hxjava`
run "Elixir" "elixir elixir/bench.exs 40"
#run "C# AOT" "./csharp-aot/code/csharp 40"
run "C#" "./csharp/code/csharp 40"
run "Ruby" "ruby ./ruby/code.rb 40"
run "Ruby YJIT" "miniruby --yjit ./ruby/code.rb 40"
run "Haskell" "./hs/code 40"
run "Emojicode" "./emojicode/code 40"
