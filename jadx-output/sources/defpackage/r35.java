package defpackage;

import com.google.android.gms.common.api.Scope;
import defpackage.ny;

/* loaded from: classes.dex */
public final class r35 {
    public static final ny.g<i35> a;
    public static final ny.g<i35> b;
    public static final ny.a<i35, h35> c;
    public static final ny.a<i35, Object> d;

    static {
        ny.g<i35> gVar = new ny.g<>();
        a = gVar;
        ny.g<i35> gVar2 = new ny.g<>();
        b = gVar2;
        s35 s35Var = new s35();
        c = s35Var;
        t35 t35Var = new t35();
        d = t35Var;
        new Scope("profile");
        new Scope("email");
        bi.j(s35Var, "Cannot construct an Api with a null ClientBuilder");
        bi.j(gVar, "Cannot construct an Api with a null ClientKey");
        bi.j(t35Var, "Cannot construct an Api with a null ClientBuilder");
        bi.j(gVar2, "Cannot construct an Api with a null ClientKey");
    }
}
