package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class bf6 extends ff6 {
    public final /* synthetic */ Method a;
    public final /* synthetic */ Object b;

    public bf6(Method method, Object obj) {
        this.a = method;
        this.b = obj;
    }

    @Override // defpackage.ff6
    public <T> T b(Class<T> cls) throws Exception {
        ff6.a(cls);
        return (T) this.a.invoke(this.b, cls);
    }
}
