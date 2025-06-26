package org.apache.commons.text.lookup;

import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public class ConstantStringLookup extends AbstractStringLookup {
    private static final char FIELD_SEPARATOR = '.';
    private static final ConcurrentHashMap<String, String> CONSTANT_CACHE = new ConcurrentHashMap<>();
    public static final ConstantStringLookup INSTANCE = new ConstantStringLookup();

    public static void clear() {
        CONSTANT_CACHE.clear();
    }

    public Class<?> fetchClass(String str) throws ClassNotFoundException {
        return ClassUtils.getClass(str);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public synchronized String lookup(String str) {
        if (str == null) {
            return null;
        }
        ConcurrentHashMap<String, String> concurrentHashMap = CONSTANT_CACHE;
        String string = concurrentHashMap.get(str);
        if (string != null) {
            return string;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return null;
        }
        try {
            Object objResolveField = resolveField(str.substring(0, iLastIndexOf), str.substring(iLastIndexOf + 1));
            if (objResolveField != null) {
                string = Objects.toString(objResolveField, null);
                concurrentHashMap.put(str, string);
            }
            return string;
        } catch (Exception unused) {
            return null;
        }
    }

    public Object resolveField(String str, String str2) throws Exception {
        Class<?> clsFetchClass = fetchClass(str);
        if (clsFetchClass == null) {
            return null;
        }
        return clsFetchClass.getField(str2).get(null);
    }
}
