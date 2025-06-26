package defpackage;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes.dex */
public final class uo1<T> implements kb0<Object> {
    public final WeakReference<T> a;
    public final String b;
    public final kb0<T> c;
    public final /* synthetic */ io1 d;

    public uo1(io1 io1Var, WeakReference weakReference, String str, kb0 kb0Var, no1 no1Var) {
        this.d = io1Var;
        this.a = weakReference;
        this.b = str;
        this.c = kb0Var;
    }

    @Override // defpackage.kb0
    public final void a(Object obj, Map<String, String> map) {
        T t = this.a.get();
        if (t == null) {
            this.d.d(this.b, this);
        } else {
            this.c.a(t, map);
        }
    }
}
