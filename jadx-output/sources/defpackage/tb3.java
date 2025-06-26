package defpackage;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class tb3 extends k22<Integer, Object> {
    public Long b;
    public Boolean c;
    public Boolean d;

    public tb3(String str) {
        c(str);
    }

    @Override // defpackage.k22
    public final HashMap<Integer, Object> b() {
        HashMap<Integer, Object> map = new HashMap<>();
        map.put(0, this.b);
        map.put(1, this.c);
        map.put(2, this.d);
        return map;
    }

    public final void c(String str) {
        HashMap mapA = k22.a(str);
        if (mapA != null) {
            this.b = (Long) mapA.get(0);
            this.c = (Boolean) mapA.get(1);
            this.d = (Boolean) mapA.get(2);
        }
    }
}
