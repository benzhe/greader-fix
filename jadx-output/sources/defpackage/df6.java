package defpackage;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class df6 extends ff6 {
    public final /* synthetic */ Method a;

    public df6(Method method) {
        this.a = method;
    }

    @Override // defpackage.ff6
    public <T> T b(Class<T> cls) throws Exception {
        ff6.a(cls);
        return (T) this.a.invoke(null, cls, Object.class);
    }
}
