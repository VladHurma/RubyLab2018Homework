# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
	def reverse_list
		print "#{@val}\n"
		@next = @val.split('->').reverse.rotate.join('->')
		print "#{@next}\n"
	end
end

ListNode.new('1->2->3->4->5->NULL').reverse_list