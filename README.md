# Custom Enumerable Project

The goal of this project is to reimplement common methods used frequently through the enumerables module with objects like arrays and hashes.

This repository complements the [Custom Enumerables Project](https://www.theodinproject.com/lessons/ruby-custom-enumerables) in the Ruby Course for The Odin Project.

## Problems

### Methods

The following table has the methods that have been implemented along with their associated specs. The methods in the Enumerable module only work with Arrays at the moment.

| Method                          | Spec File                       |
| ------------------------------- | ------------------------------- |
| `Array#my_each`                 | spec/my_each_spec.rb            |
| `Enumerable#my_each_with_index` | spec/my_each_with_index_spec.rb |
| `Enumerable#my_select`          | spec/my_select_spec.rb          |
| `Enumerable#my_all?`            | spec/my_all_spec.rb             |
| `Enumerable#my_any?`            | spec/my_any_spec.rb             |
| `Enumerable#my_none?`           | spec/my_none_spec.rb            |
| `Enumerable#my_count`           | spec/my_count_spec.rb           |
| `Enumerable#my_map`             | spec/my_map_spec.rb             |
| `Enumerable#my_inject`          | spec/my_inject_spec.rb          |

## What I used

Ruby methods, blocks, and procs

## What I learned

How to work with blocks and procs and how common enumerables might work under the hood
