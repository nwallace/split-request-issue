Example project to demonstrate issue with using Split outside the normal Rack request context.

To run the test:

```
$ bundle install
$ rspec
```

If you modify the Gemfile to use split v3.2.0, the test will pass.
