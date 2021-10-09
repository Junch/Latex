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

\newpage
## 151. 翻转字符串里的单词
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

## 47. Permutations II
```cpp
vector<vector<int>> permuteUnique(vector<int>& nums) {
    // https://zxi.mytechroad.com/blog/searching/leetcode-47-permutations-ii/
    
    vector<vector<int>> ans;
    sort(nums.begin(), nums.end());
    vector<int> path;
    vector<bool> used(nums.size(), false);

    function<void(void)> dfs = [&]() {
        if (path.size() == nums.size()) {
            ans.push_back(path);
            return;
        }

        for (int i = 0; i < nums.size(); ++i) {
            if (used[i])
                continue;
            if (i > 0 && nums[i] == nums[i - 1] && !used[i - 1])
                continue;

            path.push_back(nums[i]);
            used[i] = true;
            dfs();
            path.pop_back();
            used[i] = false;
        }
    };

    dfs();
    return ans;
}
```