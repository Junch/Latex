---
title: LeetCode题目集合
author: Jun Chen
documentclass: ctexart
header-includes:
  - \usepackage{minted}
geometry:
  - a4paper
  - top=20mm
  - left=25mm
  - heightrounded
color-links: true
---


## 151. 翻转字符串里的单词: 
[https://leetcode.com/problems/reverse-words-in-a-string](https://leetcode.com/problems/reverse-words-in-a-string)

```cpp
class Solution {
    public:
        void reverseWords(string& s)
        {
            int storeIndex = 0, n = s.size();
            reverse(s.begin(), s.end());
            for (int i = 0; i < n; ++i) {
                if (s[i] != ' ') {
                    if (storeIndex != 0)
                        s[storeIndex++] = ' ';
                    int j = i;
                    while (j < n && s[j] != ' ')
                        s[storeIndex++] = s[j++];
                    reverse(s.begin() + storeIndex - (j - i), s.begin() + storeIndex);
                    i = j;
                }
            }
            s.resize(storeIndex);
        }
    };
}
```