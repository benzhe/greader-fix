package org.apache.commons.text.lookup;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes2.dex */
public class InterpolatorStringLookup extends AbstractStringLookup {
    public static final AbstractStringLookup INSTANCE = new InterpolatorStringLookup();
    private static final char PREFIX_SEPARATOR = ':';
    private final StringLookup defaultStringLookup;
    private final Map<String, StringLookup> stringLookupMap;

    public InterpolatorStringLookup() {
        this((Map) null);
    }

    public static String toKey(String str) {
        return str.toLowerCase(Locale.ROOT);
    }

    public Map<String, StringLookup> getStringLookupMap() {
        return this.stringLookupMap;
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(58);
        if (iIndexOf >= 0) {
            String key = toKey(str.substring(0, iIndexOf));
            int i = iIndexOf + 1;
            String strSubstring = str.substring(i);
            StringLookup stringLookup = this.stringLookupMap.get(key);
            String strLookup = stringLookup != null ? stringLookup.lookup(strSubstring) : null;
            if (strLookup != null) {
                return strLookup;
            }
            str = str.substring(i);
        }
        StringLookup stringLookup2 = this.defaultStringLookup;
        if (stringLookup2 != null) {
            return stringLookup2.lookup(str);
        }
        return null;
    }

    public String toString() {
        return super.toString() + " [stringLookupMap=" + this.stringLookupMap + ", defaultStringLookup=" + this.defaultStringLookup + "]";
    }

    public InterpolatorStringLookup(Map<String, StringLookup> map, StringLookup stringLookup, boolean z) {
        this.defaultStringLookup = stringLookup;
        this.stringLookupMap = new HashMap(map.size());
        for (Map.Entry<String, StringLookup> entry : map.entrySet()) {
            this.stringLookupMap.put(toKey(entry.getKey()), entry.getValue());
        }
        if (z) {
            StringLookupFactory.INSTANCE.addDefaultStringLookups(this.stringLookupMap);
        }
    }

    public <V> InterpolatorStringLookup(Map<String, V> map) {
        this(StringLookupFactory.INSTANCE.mapStringLookup(map == null ? new HashMap<>() : map));
    }

    public InterpolatorStringLookup(StringLookup stringLookup) {
        this(new HashMap(), stringLookup, true);
    }
}
