package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class s53 extends k22<Integer, Long> {
    public long b = -1;
    public long c = -1;

    public s53(String str) {
        c(str);
    }

    @Override // defpackage.k22
    public final HashMap<Integer, Long> b() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, Long.valueOf(this.b));
        map.put(1, Long.valueOf(this.c));
        return map;
    }

    public final void c(String str) {
        HashMap mapA = k22.a(str);
        if (mapA != null) {
            this.b = ((Long) mapA.get(0)).longValue();
            this.c = ((Long) mapA.get(1)).longValue();
        }
    }
}
