package defpackage;

import com.google.android.gms.internal.ads.zzfa;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class sb3 implements gs2 {
    public final sq2 a;
    public final cr2 b;
    public final dc3 c;
    public final zzfa d;

    public sb3(sq2 sq2Var, cr2 cr2Var, dc3 dc3Var, zzfa zzfaVar) {
        this.a = sq2Var;
        this.b = cr2Var;
        this.c = dc3Var;
        this.d = zzfaVar;
    }

    public final Map<String, Object> a() {
        HashMap map = new HashMap();
        cr2 cr2Var = this.b;
        e45<gl1> e45Var = cr2Var.h;
        gl1 gl1VarB = cr2Var.f.b();
        if (e45Var.o()) {
            gl1VarB = e45Var.l();
        }
        map.put("v", this.a.a());
        map.put("gms", Boolean.valueOf(this.a.c()));
        map.put("int", gl1VarB.M());
        map.put("up", Boolean.valueOf(this.d.a));
        map.put("t", new Throwable());
        return map;
    }

    public final Map<String, Object> b() {
        Map<String, Object> mapA = a();
        cr2 cr2Var = this.b;
        e45<gl1> e45Var = cr2Var.g;
        gl1 gl1VarB = cr2Var.e.b();
        if (e45Var.o()) {
            gl1VarB = e45Var.l();
        }
        HashMap map = (HashMap) mapA;
        map.put("gai", Boolean.valueOf(this.a.b()));
        map.put("did", gl1VarB.Q());
        map.put("dst", Integer.valueOf(gl1VarB.R().e));
        map.put("doo", Boolean.valueOf(gl1VarB.S()));
        return mapA;
    }
}
