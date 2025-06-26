package org.apache.commons.text.matcher;

/* loaded from: classes2.dex */
public interface StringMatcher {
    StringMatcher andThen(StringMatcher stringMatcher);

    int isMatch(CharSequence charSequence, int i);

    int isMatch(CharSequence charSequence, int i, int i2, int i3);

    int isMatch(char[] cArr, int i);

    int isMatch(char[] cArr, int i, int i2, int i3);

    int size();
}
