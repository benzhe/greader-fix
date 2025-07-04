package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.Writer;
import java.security.InvalidParameterException;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class LookupTranslator extends CharSequenceTranslator {
    private final int longest;
    private final Map<String, String> lookupMap;
    private final BitSet prefixSet;
    private final int shortest;

    public LookupTranslator(Map<CharSequence, CharSequence> map) {
        if (map == null) {
            throw new InvalidParameterException("lookupMap cannot be null");
        }
        this.lookupMap = new HashMap();
        this.prefixSet = new BitSet();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : map.entrySet()) {
            this.lookupMap.put(entry.getKey().toString(), entry.getValue().toString());
            this.prefixSet.set(entry.getKey().charAt(0));
            int length = entry.getKey().length();
            i = length < i ? length : i;
            if (length > i2) {
                i2 = length;
            }
        }
        this.shortest = i;
        this.longest = i2;
    }

    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        if (!this.prefixSet.get(charSequence.charAt(i))) {
            return 0;
        }
        int length = this.longest;
        if (i + length > charSequence.length()) {
            length = charSequence.length() - i;
        }
        while (length >= this.shortest) {
            String str = this.lookupMap.get(charSequence.subSequence(i, i + length).toString());
            if (str != null) {
                writer.write(str);
                return length;
            }
            length--;
        }
        return 0;
    }
}
