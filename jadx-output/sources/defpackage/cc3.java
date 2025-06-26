package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class cc3 extends k22<Integer, Long> {
    public Long b;
    public Long c;
    public Long d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;
    public Long l;

    public cc3(String str) {
        c(str);
    }

    @Override // defpackage.k22
    public final HashMap<Integer, Long> b() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.b);
        map.put(1, this.c);
        map.put(2, this.d);
        map.put(3, this.e);
        map.put(4, this.f);
        map.put(5, this.g);
        map.put(6, this.h);
        map.put(7, this.i);
        map.put(8, this.j);
        map.put(9, this.k);
        map.put(10, this.l);
        return map;
    }

    public final void c(String str) {
        HashMap mapA = k22.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Long) mapA.get(1);
            this.d = (Long) mapA.get(2);
            this.e = (Long) mapA.get(3);
            this.f = (Long) mapA.get(4);
            this.g = (Long) mapA.get(5);
            this.h = (Long) mapA.get(6);
            this.i = (Long) mapA.get(7);
            this.j = (Long) mapA.get(8);
            this.k = (Long) mapA.get(9);
            this.l = (Long) mapA.get(10);
        }
    }
}
