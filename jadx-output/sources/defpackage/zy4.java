package defpackage;

import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zy4 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ Bundle h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ boolean j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ String l;
    public final /* synthetic */ sz4 m;

    public zy4(sz4 sz4Var, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.m = sz4Var;
        this.e = str;
        this.f = str2;
        this.g = j;
        this.h = bundle;
        this.i = z;
        this.j = z2;
        this.k = z3;
        this.l = str3;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.m.C(this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }
}
