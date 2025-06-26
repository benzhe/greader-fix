package defpackage;

import defpackage.pf6;
import java.io.IOException;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class of6 extends pf6.b {
    public final /* synthetic */ Field d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ de6 f;
    public final /* synthetic */ od6 g;
    public final /* synthetic */ dg6 h;
    public final /* synthetic */ boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of6(pf6 pf6Var, String str, boolean z, boolean z2, Field field, boolean z3, de6 de6Var, od6 od6Var, dg6 dg6Var, boolean z4) {
        super(str, z, z2);
        this.d = field;
        this.e = z3;
        this.f = de6Var;
        this.g = od6Var;
        this.h = dg6Var;
        this.i = z4;
    }

    @Override // pf6.b
    public void a(eg6 eg6Var, Object obj) throws IllegalAccessException, IOException, IllegalArgumentException {
        Object objA = this.f.a(eg6Var);
        if (objA == null && this.i) {
            return;
        }
        this.d.set(obj, objA);
    }

    @Override // pf6.b
    public void b(gg6 gg6Var, Object obj) throws IllegalAccessException, IOException, IllegalArgumentException {
        (this.e ? this.f : new tf6(this.g, this.f, this.h.b)).b(gg6Var, this.d.get(obj));
    }

    @Override // pf6.b
    public boolean c(Object obj) throws IllegalAccessException, IOException {
        return this.b && this.d.get(obj) != obj;
    }
}
