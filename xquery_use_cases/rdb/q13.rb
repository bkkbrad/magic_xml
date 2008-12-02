#!/usr/bin/ruby -I../.. -rmagic_xml
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


users = XML.load('users.xml')
bids  = XML.load('bids.xml')

XML.result! {
    bids.descendants(:userid).map{|uid| uid.text}.uniq.sort.each{|uid|
        users.each({:@userid => uid}){|u|
            user_bids = bids.find_all{|b| b.is_a? XML and b[:@userid] == uid}
            bidder! {
                add! u.child(:userid)
                add! u.child(:name)
                bidcount! user_bids.size
                sum = 0.0
                user_bids.each{|b|
                    sum += b[:@bid].to_i
                }
                a = sum / user_bids.size
# This is ugly hack to get 1.0 print as "1" not as "1.0"
                a = a.to_i if a.to_i == a
                avgbid! a
            }
        }
    }
}
