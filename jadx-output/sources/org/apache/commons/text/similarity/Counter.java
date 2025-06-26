package org.apache.commons.text.similarity;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class Counter {
    private Counter() {
    }

    public static Map<CharSequence, Integer> of(CharSequence[] charSequenceArr) {
        HashMap map = new HashMap();
        for (CharSequence charSequence : charSequenceArr) {
            if (map.containsKey(charSequence)) {
                map.put(charSequence, Integer.valueOf(((Integer) map.get(charSequence)).intValue() + 1));
            } else {
                map.put(charSequence, 1);
            }
        }
        return map;
    }
}
