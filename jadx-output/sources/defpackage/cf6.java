package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class cf6 extends ff6 {
    public final /* synthetic */ Method a;
    public final /* synthetic */ int b;

    public cf6(Method method, int i) {
        this.a = method;
        this.b = i;
    }

    @Override // defpackage.ff6
    public <T> T b(Class<T> cls) throws Exception {
        ff6.a(cls);
        return (T) this.a.invoke(null, cls, Integer.valueOf(this.b));
    }
}
