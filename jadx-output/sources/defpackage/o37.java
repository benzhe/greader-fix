package defpackage;

import defpackage.f37;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes2.dex */
public final class o37 {
    public static final ld5 c = new ld5(String.valueOf(','));
    public static final o37 d = new o37(f37.b.a, false, new o37(new f37.a(), true, new o37()));
    public final Map<String, a> a;
    public final byte[] b;

    public static final class a {
        public final n37 a;
        public final boolean b;

        public a(n37 n37Var, boolean z) {
            c50.A(n37Var, "decompressor");
            this.a = n37Var;
            this.b = z;
        }
    }

    public o37(n37 n37Var, boolean z, o37 o37Var) {
        String strA = n37Var.a();
        c50.t(!strA.contains(","), "Comma is currently not allowed in message encoding");
        int size = o37Var.a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(o37Var.a.containsKey(n37Var.a()) ? size : size + 1);
        for (a aVar : o37Var.a.values()) {
            String strA2 = aVar.a.a();
            if (!strA2.equals(strA)) {
                linkedHashMap.put(strA2, new a(aVar.a, aVar.b));
            }
        }
        linkedHashMap.put(strA, new a(n37Var, z));
        Map<String, a> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        this.a = mapUnmodifiableMap;
        ld5 ld5Var = c;
        HashSet hashSet = new HashSet(mapUnmodifiableMap.size());
        for (Map.Entry<String, a> entry : mapUnmodifiableMap.entrySet()) {
            if (entry.getValue().b) {
                hashSet.add(entry.getKey());
            }
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        Objects.requireNonNull(ld5Var);
        Iterator<?> it = setUnmodifiableSet.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            ld5Var.a(sb, it);
            this.b = sb.toString().getBytes(Charset.forName("US-ASCII"));
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public o37() {
        this.a = new LinkedHashMap(0);
        this.b = new byte[0];
    }
}
