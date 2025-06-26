package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.internal.ads.zzbar;
import java.util.List;

/* loaded from: classes.dex */
public final class i91 implements cb3<g91> {
    public final mb3<zo2> a;
    public final mb3<zzbar> b;
    public final mb3<ApplicationInfo> c;
    public final mb3<String> d;
    public final mb3<List<String>> e;
    public final mb3<PackageInfo> f;
    public final mb3<aw2<String>> g;
    public final mb3<zzf> h;
    public final mb3<String> i;
    public final mb3<pd2<Bundle>> j;

    public i91(mb3<zo2> mb3Var, mb3<zzbar> mb3Var2, mb3<ApplicationInfo> mb3Var3, mb3<String> mb3Var4, mb3<List<String>> mb3Var5, mb3<PackageInfo> mb3Var6, mb3<aw2<String>> mb3Var7, mb3<zzf> mb3Var8, mb3<String> mb3Var9, mb3<pd2<Bundle>> mb3Var10) {
        this.a = mb3Var;
        this.b = mb3Var2;
        this.c = mb3Var3;
        this.d = mb3Var4;
        this.e = mb3Var5;
        this.f = mb3Var6;
        this.g = mb3Var7;
        this.h = mb3Var8;
        this.i = mb3Var9;
        this.j = mb3Var10;
    }

    public static i91 a(mb3<zo2> mb3Var, mb3<zzbar> mb3Var2, mb3<ApplicationInfo> mb3Var3, mb3<String> mb3Var4, mb3<List<String>> mb3Var5, mb3<PackageInfo> mb3Var6, mb3<aw2<String>> mb3Var7, mb3<zzf> mb3Var8, mb3<String> mb3Var9, mb3<pd2<Bundle>> mb3Var10) {
        return new i91(mb3Var, mb3Var2, mb3Var3, mb3Var4, mb3Var5, mb3Var6, mb3Var7, mb3Var8, mb3Var9, mb3Var10);
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        zo2 zo2Var = this.a.get();
        zzbar zzbarVar = this.b.get();
        ApplicationInfo applicationInfo = this.c.get();
        String str = this.d.get();
        List<String> list = this.e.get();
        PackageInfo packageInfo = this.f.get();
        xa3 xa3VarB = db3.b(this.g);
        this.h.get();
        return new g91(zo2Var, zzbarVar, applicationInfo, str, list, packageInfo, xa3VarB, this.i.get(), this.j.get());
    }
}
