package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class ub3 extends k22<Integer, Long> {
    public Long b;
    public Long c;

    public ub3(String str) {
        c(str);
    }

    @Override // defpackage.k22
    public final HashMap<Integer, Long> b() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.b);
        map.put(1, this.c);
        return map;
    }

    public final void c(String str) {
        HashMap mapA = k22.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Long) mapA.get(1);
        }
    }
}
