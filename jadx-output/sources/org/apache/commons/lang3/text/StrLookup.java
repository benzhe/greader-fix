package org.apache.commons.lang3.text;

import java.util.Map;

@Deprecated
/* loaded from: classes2.dex */
public abstract class StrLookup<V> {
    private static final StrLookup<String> NONE_LOOKUP = new MapStrLookup(null);
    private static final StrLookup<String> SYSTEM_PROPERTIES_LOOKUP = new SystemPropertiesStrLookup();

    public static class MapStrLookup<V> extends StrLookup<V> {
        private final Map<String, V> map;

        public MapStrLookup(Map<String, V> map) {
            this.map = map;
        }

        @Override // org.apache.commons.lang3.text.StrLookup
        public String lookup(String str) {
            V v;
            Map<String, V> map = this.map;
            if (map == null || (v = map.get(str)) == null) {
                return null;
            }
            return v.toString();
        }
    }

    public static class SystemPropertiesStrLookup extends StrLookup<String> {
        private SystemPropertiesStrLookup() {
        }

        @Override // org.apache.commons.lang3.text.StrLookup
        public String lookup(String str) {
            if (str.isEmpty()) {
                return null;
            }
            try {
                return System.getProperty(str);
            } catch (SecurityException unused) {
                return null;
            }
        }
    }

    public static <V> StrLookup<V> mapLookup(Map<String, V> map) {
        return new MapStrLookup(map);
    }

    public static StrLookup<?> noneLookup() {
        return NONE_LOOKUP;
    }

    public static StrLookup<String> systemPropertiesLookup() {
        return SYSTEM_PROPERTIES_LOOKUP;
    }

    public abstract String lookup(String str);
}
