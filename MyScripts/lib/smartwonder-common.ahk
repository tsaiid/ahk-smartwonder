; SmartWonder specific functions

FindTabByName(tabList, tabName) {
  If (tabName = "") {
    Return 0
  }

  Loop % tabList.children.Length {
    If (tabList.children[A_Index - 1].innerText = tabName) {
      Return tabList.children[A_Index - 1]
    }
  }

  Return 0
}
