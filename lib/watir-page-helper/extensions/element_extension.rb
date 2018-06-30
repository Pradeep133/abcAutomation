module Watir
  class Element
    # Identifies the sibling of the element given its type and search criteria
    # eg: <div>
    #        <label> Username</label>
    #        <input class="uname"> Username</input>
    #      </div>
    # then from label, to get into the input box
    # label.sibling("input", {:class, "uname"})
    def sibling type, selector = {}
      parent.send(type, selector)
    end
  end
end
