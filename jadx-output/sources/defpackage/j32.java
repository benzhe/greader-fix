package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class j32 extends k22<Integer, Object> {
    public String b = "E";
    public long c = -1;
    public String d = "E";
    public String e = "E";
    public String f = "E";

    public j32() {
    }

    @Override // defpackage.k22
    public final HashMap<Integer, Object> b() {
        HashMap<Integer, Object> map = new HashMap<>();
        map.put(0, this.b);
        map.put(4, this.f);
        map.put(3, this.e);
        map.put(2, this.d);
        map.put(1, Long.valueOf(this.c));
        return map;
    }

    public final void c(String str) {
        HashMap mapA = k22.a(str);
        if (mapA != null) {
            this.b = mapA.get(0) == null ? "E" : (String) mapA.get(0);
            this.c = mapA.get(1) == null ? -1L : ((Long) mapA.get(1)).longValue();
            this.d = mapA.get(2) == null ? "E" : (String) mapA.get(2);
            this.e = mapA.get(3) == null ? "E" : (String) mapA.get(3);
            this.f = mapA.get(4) != null ? (String) mapA.get(4) : "E";
        }
    }

    public j32(String str) {
        c(str);
    }
}
