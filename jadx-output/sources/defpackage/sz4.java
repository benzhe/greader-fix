package defpackage;

import android.app.Application;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.measurement.internal.zzp;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes.dex */
public final class sz4 extends ww4 {
    public rz4 c;
    public s25 d;
    public final Set<ry4> e;
    public boolean f;
    public final AtomicReference<String> g;
    public final Object h;
    public ds4 i;
    public int j;
    public final AtomicLong k;
    public long l;
    public int m;
    public final v25 n;
    public boolean o;
    public final o25 p;

    public sz4(rx4 rx4Var) {
        super(rx4Var);
        this.e = new CopyOnWriteArraySet();
        this.h = new Object();
        this.o = true;
        this.p = new hz4(this);
        this.g = new AtomicReference<>();
        this.i = new ds4(null, null);
        this.j = 100;
        this.l = -1L;
        this.m = 100;
        this.k = new AtomicLong(0L);
        this.n = new v25(rx4Var);
    }

    public static void t(sz4 sz4Var, ds4 ds4Var, int i, long j, boolean z, boolean z2) throws IllegalStateException {
        sz4Var.d();
        sz4Var.f();
        if (j <= sz4Var.l && ds4.i(sz4Var.m, i)) {
            sz4Var.a.a().l.b("Dropped out-of-date consent setting, proposed settings", ds4Var);
            return;
        }
        ex4 ex4VarQ = sz4Var.a.q();
        pc4.b();
        cs4 cs4Var = ex4VarQ.a.g;
        dw4<Boolean> dw4Var = ew4.E0;
        if (cs4Var.s(null, dw4Var)) {
            ex4VarQ.d();
            if (ex4VarQ.r(i)) {
                SharedPreferences.Editor editorEdit = ex4VarQ.n().edit();
                editorEdit.putString("consent_settings", ds4Var.c());
                editorEdit.putInt("consent_source", i);
                editorEdit.apply();
                sz4Var.l = j;
                sz4Var.m = i;
                h15 h15VarZ = sz4Var.a.z();
                Objects.requireNonNull(h15VarZ);
                pc4.b();
                if (h15VarZ.a.g.s(null, dw4Var)) {
                    h15VarZ.d();
                    h15VarZ.f();
                    if (z) {
                        h15VarZ.r();
                        h15VarZ.a.v().i();
                    }
                    if (h15VarZ.p()) {
                        h15VarZ.t(new v05(h15VarZ, h15VarZ.v(false)));
                    }
                }
                if (z2) {
                    sz4Var.a.z().z(new AtomicReference<>());
                    return;
                }
                return;
            }
        }
        sz4Var.a.a().l.b("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
    }

    public final void A(String str, String str2, Bundle bundle) throws IllegalStateException {
        D(str, str2, bundle, true, true, this.a.n.a());
    }

    public final void B(String str, String str2, long j, Bundle bundle) {
        d();
        C(str, str2, j, bundle, true, this.d == null || p25.F(str2), false, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0145, code lost:
    
        r5 = 13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C(java.lang.String r25, java.lang.String r26, long r27, android.os.Bundle r29, boolean r30, boolean r31, boolean r32, java.lang.String r33) throws java.lang.IllegalStateException, java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sz4.C(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
    
        if (r4 > 100) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
    
        if (r6 > 100) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(java.lang.String r21, java.lang.String r22, android.os.Bundle r23, boolean r24, boolean r25, long r26) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sz4.D(java.lang.String, java.lang.String, android.os.Bundle, boolean, boolean, long):void");
    }

    public final void E(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) throws IllegalStateException {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                        i++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i < list.size()) {
                        Object obj2 = list.get(i);
                        if (obj2 instanceof Bundle) {
                            list.set(i, new Bundle((Bundle) obj2));
                        }
                        i++;
                    }
                }
            }
        }
        this.a.m().q(new zy4(this, str, str2, j, bundle2, z, z2, z3, null));
    }

    public final void F(String str, Object obj) throws IllegalStateException {
        G("auto", str, obj, true, this.a.n.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(java.lang.String r16, java.lang.String r17, java.lang.Object r18, boolean r19, long r20) throws java.lang.IllegalStateException {
        /*
            r15 = this;
            r6 = r15
            r2 = r17
            r0 = r18
            if (r16 != 0) goto La
            java.lang.String r1 = "app"
            goto Lc
        La:
            r1 = r16
        Lc:
            r3 = 6
            r4 = 0
            r5 = 24
            if (r19 == 0) goto L1e
            rx4 r3 = r6.a
            p25 r3 = r3.t()
            int r3 = r3.l0(r2)
            r11 = r3
            goto L48
        L1e:
            rx4 r7 = r6.a
            p25 r7 = r7.t()
            java.lang.String r8 = "user property"
            boolean r9 = r7.g0(r8, r2)
            if (r9 != 0) goto L2e
        L2c:
            r11 = 6
            goto L48
        L2e:
            java.lang.String[] r9 = defpackage.qy4.a
            r10 = 0
            boolean r9 = r7.i0(r8, r9, r10, r2)
            if (r9 != 0) goto L3c
            r3 = 15
            r11 = 15
            goto L48
        L3c:
            rx4 r9 = r7.a
            cs4 r9 = r9.g
            boolean r7 = r7.j0(r8, r5, r2)
            if (r7 != 0) goto L47
            goto L2c
        L47:
            r11 = 0
        L48:
            r3 = 1
            if (r11 == 0) goto L71
            rx4 r0 = r6.a
            p25 r0 = r0.t()
            rx4 r1 = r6.a
            cs4 r1 = r1.g
            java.lang.String r13 = r0.q(r2, r5, r3)
            if (r2 == 0) goto L61
            int r4 = r17.length()
            r14 = r4
            goto L62
        L61:
            r14 = 0
        L62:
            rx4 r0 = r6.a
            p25 r8 = r0.t()
            o25 r9 = r6.p
            r10 = 0
            java.lang.String r12 = "_ev"
            r8.A(r9, r10, r11, r12, r13, r14)
            return
        L71:
            if (r0 == 0) goto Lc5
            rx4 r7 = r6.a
            p25 r7 = r7.t()
            int r11 = r7.x(r2, r0)
            if (r11 == 0) goto Lb0
            rx4 r1 = r6.a
            p25 r1 = r1.t()
            rx4 r7 = r6.a
            cs4 r7 = r7.g
            java.lang.String r13 = r1.q(r2, r5, r3)
            boolean r1 = r0 instanceof java.lang.String
            if (r1 != 0) goto L98
            boolean r1 = r0 instanceof java.lang.CharSequence
            if (r1 == 0) goto L96
            goto L98
        L96:
            r14 = 0
            goto La1
        L98:
            java.lang.String r0 = java.lang.String.valueOf(r18)
            int r4 = r0.length()
            r14 = r4
        La1:
            rx4 r0 = r6.a
            p25 r8 = r0.t()
            o25 r9 = r6.p
            r10 = 0
            java.lang.String r12 = "_ev"
            r8.A(r9, r10, r11, r12, r13, r14)
            return
        Lb0:
            rx4 r3 = r6.a
            p25 r3 = r3.t()
            java.lang.Object r5 = r3.y(r2, r0)
            if (r5 == 0) goto Lc4
            r0 = r15
            r2 = r17
            r3 = r20
            r0.i(r1, r2, r3, r5)
        Lc4:
            return
        Lc5:
            r5 = 0
            r0 = r15
            r2 = r17
            r3 = r20
            r0.i(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sz4.G(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    @Override // defpackage.ww4
    public final boolean h() {
        return false;
    }

    public final void i(String str, String str2, long j, Object obj) throws IllegalStateException {
        this.a.m().q(new az4(this, str, str2, obj, j));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(java.lang.String r10, java.lang.String r11, java.lang.Object r12, long r13) throws java.lang.IllegalStateException {
        /*
            r9 = this;
            defpackage.bi.g(r10)
            defpackage.bi.g(r11)
            r9.d()
            r9.f()
            java.lang.String r0 = "allow_personalized_ads"
            boolean r0 = r0.equals(r11)
            r1 = 1
            java.lang.String r2 = "_npa"
            if (r0 == 0) goto L65
            boolean r0 = r12 instanceof java.lang.String
            if (r0 == 0) goto L53
            r0 = r12
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L53
            java.util.Locale r11 = java.util.Locale.ENGLISH
            java.lang.String r11 = r0.toLowerCase(r11)
            java.lang.String r12 = "false"
            boolean r11 = r12.equals(r11)
            r3 = 1
            if (r1 == r11) goto L37
            r5 = 0
            goto L38
        L37:
            r5 = r3
        L38:
            java.lang.Long r11 = java.lang.Long.valueOf(r5)
            rx4 r0 = r9.a
            ex4 r0 = r0.q()
            dx4 r0 = r0.r
            long r5 = r11.longValue()
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 != 0) goto L4e
            java.lang.String r12 = "true"
        L4e:
            r0.b(r12)
            r7 = r11
            goto L63
        L53:
            if (r12 != 0) goto L65
            rx4 r11 = r9.a
            ex4 r11 = r11.q()
            dx4 r11 = r11.r
            java.lang.String r0 = "unset"
            r11.b(r0)
            r7 = r12
        L63:
            r4 = r2
            goto L67
        L65:
            r4 = r11
            r7 = r12
        L67:
            rx4 r11 = r9.a
            boolean r11 = r11.g()
            if (r11 != 0) goto L7d
            rx4 r10 = r9.a
            qw4 r10 = r10.a()
            ow4 r10 = r10.n
            java.lang.String r11 = "User property not set since app measurement is disabled"
            r10.a(r11)
            return
        L7d:
            rx4 r11 = r9.a
            boolean r11 = r11.i()
            if (r11 != 0) goto L86
            return
        L86:
            com.google.android.gms.measurement.internal.zzkr r11 = new com.google.android.gms.measurement.internal.zzkr
            r3 = r11
            r5 = r13
            r8 = r10
            r3.<init>(r4, r5, r7, r8)
            rx4 r10 = r9.a
            h15 r10 = r10.z()
            r10.d()
            r10.f()
            r10.r()
            rx4 r12 = r10.a
            kw4 r12 = r12.v()
            java.util.Objects.requireNonNull(r12)
            android.os.Parcel r13 = android.os.Parcel.obtain()
            r14 = 0
            defpackage.m25.a(r11, r13, r14)
            byte[] r0 = r13.marshall()
            r13.recycle()
            int r13 = r0.length
            r2 = 131072(0x20000, float:1.83671E-40)
            if (r13 <= r2) goto Lc8
            rx4 r12 = r12.a
            qw4 r12 = r12.a()
            ow4 r12 = r12.g
            java.lang.String r13 = "User property too long for local database. Sending directly to service"
            r12.a(r13)
            goto Lcc
        Lc8:
            boolean r14 = r12.n(r1, r0)
        Lcc:
            com.google.android.gms.measurement.internal.zzp r12 = r10.v(r1)
            j05 r13 = new j05
            r13.<init>(r10, r12, r14, r11)
            r10.t(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sz4.k(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void l(long j, boolean z) throws IllegalStateException {
        d();
        f();
        this.a.a().m.a("Resetting analytics data (FE)");
        x15 x15VarR = this.a.r();
        x15VarR.d();
        u15 u15Var = x15VarR.e;
        u15Var.c.c();
        u15Var.a = 0L;
        u15Var.b = 0L;
        boolean zG = this.a.g();
        ex4 ex4VarQ = this.a.q();
        ex4VarQ.j.b(j);
        if (!TextUtils.isEmpty(ex4VarQ.a.q().y.a())) {
            ex4VarQ.y.b(null);
        }
        od4.b();
        cs4 cs4Var = ex4VarQ.a.g;
        dw4<Boolean> dw4Var = ew4.p0;
        if (cs4Var.s(null, dw4Var)) {
            ex4VarQ.t.b(0L);
        }
        if (!ex4VarQ.a.g.v()) {
            ex4VarQ.t(!zG);
        }
        ex4VarQ.z.b(null);
        ex4VarQ.A.b(0L);
        ex4VarQ.B.b(null);
        if (z) {
            h15 h15VarZ = this.a.z();
            h15VarZ.d();
            h15VarZ.f();
            zzp zzpVarV = h15VarZ.v(false);
            h15VarZ.r();
            h15VarZ.a.v().i();
            h15VarZ.t(new k05(h15VarZ, zzpVarV));
        }
        od4.b();
        if (this.a.g.s(null, dw4Var)) {
            this.a.r().d.a();
        }
        this.o = !zG;
    }

    public final void n() throws IllegalStateException {
        d();
        f();
        if (this.a.i()) {
            if (this.a.g.s(null, ew4.c0)) {
                cs4 cs4Var = this.a.g;
                c35 c35Var = cs4Var.a.f;
                Boolean boolU = cs4Var.u("google_analytics_deferred_deep_link_enabled");
                if (boolU != null && boolU.booleanValue()) {
                    this.a.a().m.a("Deferred Deep Link feature enabled.");
                    this.a.m().q(new Runnable(this) { // from class: vy4
                        public final sz4 e;

                        {
                            this.e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() throws IllegalStateException {
                            Pair pair;
                            NetworkInfo activeNetworkInfo;
                            sz4 sz4Var = this.e;
                            sz4Var.d();
                            if (sz4Var.a.q().w.a()) {
                                sz4Var.a.a().m.a("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long jA = sz4Var.a.q().x.a();
                            sz4Var.a.q().x.b(1 + jA);
                            rx4 rx4Var = sz4Var.a;
                            cs4 cs4Var2 = rx4Var.g;
                            if (jA >= 5) {
                                rx4Var.a().i.a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                                sz4Var.a.q().w.b(true);
                                return;
                            }
                            rx4Var.m().d();
                            rx4.n(rx4Var.w());
                            String strK = rx4Var.b().k();
                            ex4 ex4VarQ = rx4Var.q();
                            ex4VarQ.d();
                            long jB = ex4VarQ.a.n.b();
                            String str = ex4VarQ.m;
                            if (str == null || jB >= ex4VarQ.o) {
                                ex4VarQ.o = ex4VarQ.a.g.n(strK, ew4.b) + jB;
                                AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
                                try {
                                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(ex4VarQ.a.a);
                                    if (advertisingIdInfo != null) {
                                        ex4VarQ.m = advertisingIdInfo.getId();
                                        ex4VarQ.n = advertisingIdInfo.isLimitAdTrackingEnabled();
                                    }
                                    if (ex4VarQ.m == null) {
                                        ex4VarQ.m = "";
                                    }
                                } catch (Exception e) {
                                    ex4VarQ.a.a().m.b("Unable to get advertising id", e);
                                    ex4VarQ.m = "";
                                }
                                AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
                                pair = new Pair(ex4VarQ.m, Boolean.valueOf(ex4VarQ.n));
                            } else {
                                pair = new Pair(str, Boolean.valueOf(ex4VarQ.n));
                            }
                            if (!rx4Var.g.w() || ((Boolean) pair.second).booleanValue() || TextUtils.isEmpty((CharSequence) pair.first)) {
                                rx4Var.a().m.a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
                                return;
                            }
                            xz4 xz4VarW = rx4Var.w();
                            xz4VarW.i();
                            ConnectivityManager connectivityManager = (ConnectivityManager) xz4VarW.a.a.getSystemService("connectivity");
                            URL url = null;
                            if (connectivityManager != null) {
                                try {
                                    activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                                } catch (SecurityException unused) {
                                }
                            } else {
                                activeNetworkInfo = null;
                            }
                            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                                rx4Var.a().i.a("Network is not available for Deferred Deep Link request. Skipping");
                                return;
                            }
                            p25 p25VarT = rx4Var.t();
                            rx4Var.b().a.g.l();
                            String str2 = (String) pair.first;
                            long jA2 = rx4Var.q().x.a() - 1;
                            Objects.requireNonNull(p25VarT);
                            try {
                                bi.g(str2);
                                bi.g(strK);
                                String strConcat = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 37000L, Integer.valueOf(p25VarT.M())), str2, strK, Long.valueOf(jA2));
                                if (strK.equals(p25VarT.a.g.g("debug.deferred.deeplink", ""))) {
                                    strConcat = strConcat.concat("&ddl_test=1");
                                }
                                url = new URL(strConcat);
                            } catch (IllegalArgumentException | MalformedURLException e2) {
                                p25VarT.a.a().f.b("Failed to create BOW URL for Deferred Deep Link. exception", e2.getMessage());
                            }
                            if (url != null) {
                                xz4 xz4VarW2 = rx4Var.w();
                                px4 px4Var = new px4(rx4Var);
                                xz4VarW2.d();
                                xz4VarW2.i();
                                xz4VarW2.a.m().t(new wz4(xz4VarW2, strK, url, px4Var));
                            }
                        }
                    });
                }
            }
            h15 h15VarZ = this.a.z();
            h15VarZ.d();
            h15VarZ.f();
            zzp zzpVarV = h15VarZ.v(true);
            h15VarZ.a.v().n(3, new byte[0]);
            h15VarZ.t(new n05(h15VarZ, zzpVarV));
            this.o = false;
            ex4 ex4VarQ = this.a.q();
            ex4VarQ.d();
            String string = ex4VarQ.n().getString("previous_os_version", null);
            ex4VarQ.a.A().i();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = ex4VarQ.n().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.a.A().i();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            A("auto", "_ou", bundle);
        }
    }

    public final void p(s25 s25Var) {
        s25 s25Var2;
        d();
        f();
        if (s25Var != null && s25Var != (s25Var2 = this.d)) {
            bi.m(s25Var2 == null, "EventInterceptor already set.");
        }
        this.d = s25Var;
    }

    public final void q(Bundle bundle, long j) throws IllegalStateException {
        Objects.requireNonNull(bundle, "null reference");
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.a.a().i.a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        c50.W2(bundle2, "app_id", String.class, null);
        c50.W2(bundle2, "origin", String.class, null);
        c50.W2(bundle2, InetAddressKeys.KEY_NAME, String.class, null);
        c50.W2(bundle2, "value", Object.class, null);
        c50.W2(bundle2, "trigger_event_name", String.class, null);
        c50.W2(bundle2, "trigger_timeout", Long.class, 0L);
        c50.W2(bundle2, "timed_out_event_name", String.class, null);
        c50.W2(bundle2, "timed_out_event_params", Bundle.class, null);
        c50.W2(bundle2, "triggered_event_name", String.class, null);
        c50.W2(bundle2, "triggered_event_params", Bundle.class, null);
        c50.W2(bundle2, "time_to_live", Long.class, 0L);
        c50.W2(bundle2, "expired_event_name", String.class, null);
        c50.W2(bundle2, "expired_event_params", Bundle.class, null);
        bi.g(bundle2.getString(InetAddressKeys.KEY_NAME));
        bi.g(bundle2.getString("origin"));
        Objects.requireNonNull(bundle2.get("value"), "null reference");
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString(InetAddressKeys.KEY_NAME);
        Object obj = bundle2.get("value");
        if (this.a.t().l0(string) != 0) {
            this.a.a().f.b("Invalid conditional user property name", this.a.u().r(string));
            return;
        }
        if (this.a.t().x(string, obj) != 0) {
            this.a.a().f.c("Invalid conditional user property value", this.a.u().r(string), obj);
            return;
        }
        Object objY = this.a.t().y(string, obj);
        if (objY == null) {
            this.a.a().f.c("Unable to normalize conditional user property value", this.a.u().r(string), obj);
            return;
        }
        c50.Z1(bundle2, objY);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
            rx4 rx4Var = this.a;
            cs4 cs4Var = rx4Var.g;
            if (j2 > 15552000000L || j2 < 1) {
                rx4Var.a().f.c("Invalid conditional user property timeout", this.a.u().r(string), Long.valueOf(j2));
                return;
            }
        }
        long j3 = bundle2.getLong("time_to_live");
        rx4 rx4Var2 = this.a;
        cs4 cs4Var2 = rx4Var2.g;
        if (j3 > 15552000000L || j3 < 1) {
            rx4Var2.a().f.c("Invalid conditional user property time to live", this.a.u().r(string), Long.valueOf(j3));
        } else {
            rx4Var2.m().q(new cz4(this, bundle2));
        }
    }

    public final void r(String str, String str2, Bundle bundle) throws IllegalStateException {
        long jA = this.a.n.a();
        bi.g(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(InetAddressKeys.KEY_NAME, str);
        bundle2.putLong("creation_timestamp", jA);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        this.a.m().q(new dz4(this, bundle2));
    }

    public final String s() {
        String str = this.a.b;
        if (str == null) {
            str = null;
            try {
                cf4.b();
                if (!this.a.g.s(null, ew4.M0)) {
                    return zz4.a(this.a.a, "google_app_id");
                }
                rx4 rx4Var = this.a;
                return zz4.b(rx4Var.a, "google_app_id", rx4Var.s);
            } catch (IllegalStateException e) {
                this.a.a().f.b("getGoogleAppId failed with exception", e);
            }
        }
        return str;
    }

    public final void u(Boolean bool, boolean z) throws IllegalStateException {
        d();
        f();
        this.a.a().m.b("Setting app measurement enabled (FE)", bool);
        this.a.q().p(bool);
        pc4.b();
        cs4 cs4Var = this.a.g;
        dw4<Boolean> dw4Var = ew4.E0;
        if (cs4Var.s(null, dw4Var) && z) {
            ex4 ex4VarQ = this.a.q();
            pc4.b();
            if (ex4VarQ.a.g.s(null, dw4Var)) {
                ex4VarQ.d();
                SharedPreferences.Editor editorEdit = ex4VarQ.n().edit();
                if (bool != null) {
                    editorEdit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
                } else {
                    editorEdit.remove("measurement_enabled_from_api");
                }
                editorEdit.apply();
            }
        }
        pc4.b();
        if (this.a.g.s(null, dw4Var)) {
            rx4 rx4Var = this.a;
            rx4Var.m().d();
            if (!rx4Var.E && (bool == null || bool.booleanValue())) {
                return;
            }
        }
        v();
    }

    public final void v() throws IllegalStateException {
        d();
        String strA = this.a.q().r.a();
        if (strA != null) {
            if ("unset".equals(strA)) {
                k("app", "_npa", null, this.a.n.a());
            } else {
                k("app", "_npa", Long.valueOf(true != "true".equals(strA) ? 0L : 1L), this.a.n.a());
            }
        }
        if (!this.a.g() || !this.o) {
            this.a.a().m.a("Updating Scion state (FE)");
            h15 h15VarZ = this.a.z();
            h15VarZ.d();
            h15VarZ.f();
            h15VarZ.t(new t05(h15VarZ, h15VarZ.v(true)));
            return;
        }
        this.a.a().m.a("Recording app launch after enabling measurement for the first time (FE)");
        n();
        od4.b();
        if (this.a.g.s(null, ew4.p0)) {
            this.a.r().d.a();
        }
        fd4.f.a().a();
        if (this.a.g.s(null, ew4.s0)) {
            hx4 hx4Var = this.a.x;
            Objects.requireNonNull(hx4Var, "null reference");
            if (hx4Var.a.q().k.a() <= 0) {
                hx4Var.a(hx4Var.a.a.getPackageName());
            }
        }
        if (this.a.g.s(null, ew4.B0)) {
            this.a.m().q(new xy4(this));
        }
    }

    public final void w() {
        if (!(this.a.a.getApplicationContext() instanceof Application) || this.c == null) {
            return;
        }
        ((Application) this.a.a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.c);
    }

    public final void x(Bundle bundle, int i, long j) throws IllegalStateException {
        pc4.b();
        String str = null;
        if (this.a.g.s(null, ew4.E0)) {
            f();
            String string = bundle.getString("ad_storage");
            if ((string != null && ds4.k(string) == null) || ((string = bundle.getString("analytics_storage")) != null && ds4.k(string) == null)) {
                str = string;
            }
            if (str != null) {
                this.a.a().k.b("Ignoring invalid consent setting", str);
                this.a.a().k.a("Valid consent values are 'granted', 'denied'");
            }
            y(ds4.a(bundle), i, j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b0, code lost:
    
        if (r6 == 20) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y(defpackage.ds4 r16, int r17, long r18) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sz4.y(ds4, int, long):void");
    }

    public final void z(ds4 ds4Var) throws IllegalStateException {
        d();
        boolean z = (ds4Var.e() && ds4Var.d()) || this.a.z().p();
        rx4 rx4Var = this.a;
        rx4Var.m().d();
        if (z != rx4Var.E) {
            rx4 rx4Var2 = this.a;
            rx4Var2.m().d();
            rx4Var2.E = z;
            ex4 ex4VarQ = this.a.q();
            pc4.b();
            Boolean boolValueOf = null;
            if (ex4VarQ.a.g.s(null, ew4.E0)) {
                ex4VarQ.d();
                if (ex4VarQ.n().contains("measurement_enabled_from_api")) {
                    boolValueOf = Boolean.valueOf(ex4VarQ.n().getBoolean("measurement_enabled_from_api", true));
                }
            }
            if (!z || boolValueOf == null || boolValueOf.booleanValue()) {
                u(Boolean.valueOf(z), false);
            }
        }
    }
}
