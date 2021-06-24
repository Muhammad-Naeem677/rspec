# RSpec

-- Test cases with a ruby gem of rspec --  
`Test Behaviour not Implementation`

1. Install rspec gem
   ```ruby
   gem install rspec
2. How to run rspec test
    ```
    rspec card.rb
3. Custom documentation format, to see specifications that we've written then run following command
    ```
    rspec --format doc card.rb

Some flags that rspec use:
* --format doc
* --color

RSpec words
* describe
* it
* context
* shared_examples_for, it_behaves_like

Organize code, coding in lib dir and testing spec files in spec dir.
```
mkdir lib
mkdir spec
```

RSpec code file name should've suffix `_spec` then rspec automatically detect it and rspec knows spec dir  
Including necessary flags run tests as:
```
rspec --format doc
```  
Add these flags in a separate file to avoid writting every time a very large command to run tests. Create `.rspec` file and add all required flags in that file, rspec will add get those flags from this file.  
Now run tests by a signle word
```
rspec
```
