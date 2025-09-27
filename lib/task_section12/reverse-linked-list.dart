class ListNote {
  int val;
  ListNote? next;
  ListNote([this.val = 0, this.next]);
}

class Solution {
  ListNote? reverseList(ListNote? head) {
    ListNote? prev = null;
    ListNote? curr = head;

    while (curr != null) {
      ListNote? next = curr.next;
      curr.next = prev;
      prev = curr;
      curr = next;
    }

    return prev;
  }
}

void main() {
  ListNote node5 = ListNote(5);
  ListNote node4 = ListNote(4, node5);
  ListNote node3 = ListNote(3, node4);
  ListNote node2 = ListNote(2, node3);
  ListNote head = ListNote(1, node2);

  Solution sol = Solution();
  ListNote? reversed = sol.reverseList(head);

  while (reversed != null) {
    print(reversed.val);
    reversed = reversed.next;
  }
}
