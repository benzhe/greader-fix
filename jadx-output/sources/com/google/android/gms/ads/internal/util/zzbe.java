package com.google.android.gms.ads.internal.util;

import defpackage.c50;
import defpackage.c90;
import defpackage.cs0;
import defpackage.ds0;
import defpackage.es0;
import defpackage.fs0;
import defpackage.hs0;
import defpackage.j40;
import defpackage.nw;
import defpackage.pu3;
import defpackage.xs0;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzbe extends j40<pu3> {
    public final xs0<pu3> r;
    public final ds0 s;

    public zzbe(String str, xs0<pu3> xs0Var) throws IOException {
        super(0, str, new nw(xs0Var));
        this.r = xs0Var;
        ds0 ds0Var = new ds0(null);
        this.s = ds0Var;
        if (ds0.a()) {
            ds0Var.c("onNetworkRequest", new cs0(str, "GET", null, null));
        }
    }

    @Override // defpackage.j40
    public final c90<pu3> i(pu3 pu3Var) {
        return new c90<>(pu3Var, c50.U2(pu3Var));
    }

    @Override // defpackage.j40
    public final void l(pu3 pu3Var) throws IOException {
        pu3 pu3Var2 = pu3Var;
        ds0 ds0Var = this.s;
        Map<String, String> map = pu3Var2.c;
        int i = pu3Var2.a;
        Objects.requireNonNull(ds0Var);
        if (ds0.a()) {
            ds0Var.c("onNetworkResponse", new fs0(i, map));
            if (i < 200 || i >= 300) {
                ds0Var.c("onNetworkRequestError", new hs0(null));
            }
        }
        ds0 ds0Var2 = this.s;
        byte[] bArr = pu3Var2.b;
        if (ds0.a() && bArr != null) {
            ds0Var2.c("onNetworkResponseBody", new es0(bArr));
        }
        this.r.a(pu3Var2);
    }
}
