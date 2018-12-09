var lengthOfLongestSubstring = function(s) {
    let hash = {};
    let ans = 0;
    let n = s.length;
    for (j=0, i=0; j<n;j++) {
        if (hash[s[j]]) {
            i = Math.max(hash[s[j]], i);
        }
        ans = Math.max(ans, j - i + 1);
        hash[s[j]] = j + 1;
    }
    return ans;
};