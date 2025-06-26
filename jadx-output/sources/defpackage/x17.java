package defpackage;

import android.util.LruCache;
import defpackage.y17;

/* loaded from: classes2.dex */
public class x17 extends LruCache<String, y17.a> {
    public x17(y17 y17Var, int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public int sizeOf(String str, y17.a aVar) {
        return aVar.b;
    }
}
