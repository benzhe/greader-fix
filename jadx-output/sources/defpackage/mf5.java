package defpackage;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class mf5 implements tz4 {
    public final /* synthetic */ q34 a;

    public mf5(q34 q34Var) {
        this.a = q34Var;
    }

    @Override // defpackage.tz4
    public final void V(String str, String str2, Bundle bundle) {
        this.a.h(str, str2, bundle);
    }

    @Override // defpackage.tz4
    public final void a(String str) {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new q24(q34Var, str));
    }

    @Override // defpackage.tz4
    public final List<Bundle> b(String str, String str2) {
        return this.a.j(str, str2);
    }

    @Override // defpackage.tz4
    public final void c(Bundle bundle) {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new k24(q34Var, bundle));
    }

    @Override // defpackage.tz4
    public final void d(String str) {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new r24(q34Var, str));
    }

    @Override // defpackage.tz4
    public final String e() {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new t24(q34Var, dd4Var));
        return dd4Var.g0(50L);
    }

    @Override // defpackage.tz4
    public final void f(String str, String str2, Bundle bundle) {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new l24(q34Var, str, str2, bundle));
    }

    @Override // defpackage.tz4
    public final String g() {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new w24(q34Var, dd4Var));
        return dd4Var.g0(500L);
    }

    @Override // defpackage.tz4
    public final int h(String str) {
        return this.a.c(str);
    }

    @Override // defpackage.tz4
    public final String i() {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new s24(q34Var, dd4Var));
        return dd4Var.g0(500L);
    }

    @Override // defpackage.tz4
    public final long j() {
        return this.a.k();
    }

    @Override // defpackage.tz4
    public final Map<String, Object> k(String str, String str2, boolean z) {
        return this.a.a(str, str2, z);
    }

    @Override // defpackage.tz4
    public final String p() {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        dd4 dd4Var = new dd4();
        q34Var.c.execute(new v24(q34Var, dd4Var));
        return dd4Var.g0(500L);
    }
}
