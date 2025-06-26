package androidx.lifecycle;

import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import defpackage.xc;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements bd {
    public final Object e;
    public final xc.a f;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.e = obj;
        this.f = xc.c.b(obj.getClass());
    }

    @Override // defpackage.bd
    public void c(dd ddVar, ad.a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        xc.a aVar2 = this.f;
        Object obj = this.e;
        xc.a.a(aVar2.a.get(aVar), ddVar, aVar, obj);
        xc.a.a(aVar2.a.get(ad.a.ON_ANY), ddVar, aVar, obj);
    }
}
