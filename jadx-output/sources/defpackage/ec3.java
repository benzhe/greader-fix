package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class ec3 extends k22<Integer, Long> {
    public Long b;
    public Long c;
    public Long d;
    public Long e;

    public ec3(String str) {
        c(str);
    }

    @Override // defpackage.k22
    public final HashMap<Integer, Long> b() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.b);
        map.put(1, this.c);
        map.put(2, this.d);
        map.put(3, this.e);
        return map;
    }

    public final void c(String str) {
        HashMap mapA = k22.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Long) mapA.get(1);
            this.d = (Long) mapA.get(2);
            this.e = (Long) mapA.get(3);
        }
    }
}
