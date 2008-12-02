#!/usr/bin/ruby -I..
#Copyright (c) 2006-2007 Tomasz Wegrzanowski <Tomasz.Wegrzanowski@gmail.com>
#
#Permission is hereby granted, free of charge, to any person obtaining a
#copy of this software and associated documentation files (the "Software"),
#to deal in the Software without restriction, including without limitation
#the rights to use, copy, modify, merge, publish, distribute, sublicense,
#and/or sell copies of the Software, and to permit persons to whom the
#Software is furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
#OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
#ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#DEALINGS IN THE SOFTWARE.


require 'magic_xml'

tests = 0
oks   = 0

ruby_bin = ARGV.shift || "ruby"

Dir.glob("*/q*.rb").sort.each{|ruby_solution|
    ruby_solution =~ /^(.*)\/q(.*)\.rb$/
    dir, name = $1, $2

    expected = File.read("#{dir}/q#{name}.out")
    got = Dir.chdir(dir) { `#{ruby_bin} q#{name}.rb` }

    # Now, expected_out contains a lot of cruft, strip!
    expected.gsub!(/>\s+/, ">")
    expected.gsub!(/\s+</, "<")
    expected.gsub!(/\s+/, " ")
    # A bit more renormalization
    expected = XML.renormalize_sequence(expected)

    # Do the same to got, or SEQ Q5 won't match
    got.gsub!(/>\s+/, ">")
    got.gsub!(/\s+</, "<")
    got.gsub!(/\s+/, " ")

    if expected == got
        oks += 1
        print "Test #{dir.upcase} Q#{name}: match\n"
    else
        print "Test #{dir.upcase} Q#{name}:\n"
        print "Expected:\n#{expected}\n";
        print "Got:\n#{got}\n";
        print "They do not match\n\n"
    end
    tests += 1
}
print "Of #{tests} tests, #{oks} passed.\n"
