package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.zzy;
import defpackage.a05;
import defpackage.bg4;
import defpackage.bi;
import defpackage.bz4;
import defpackage.cs4;
import defpackage.eg4;
import defpackage.ew4;
import defpackage.ez4;
import defpackage.f4;
import defpackage.ff4;
import defpackage.gg4;
import defpackage.iz4;
import defpackage.jz4;
import defpackage.kz4;
import defpackage.lz4;
import defpackage.mz4;
import defpackage.p25;
import defpackage.pc4;
import defpackage.q25;
import defpackage.r25;
import defpackage.rx4;
import defpackage.ry4;
import defpackage.rz4;
import defpackage.s25;
import defpackage.sz4;
import defpackage.t25;
import defpackage.u05;
import defpackage.uy4;
import defpackage.uz4;
import defpackage.v15;
import defpackage.wy4;
import defpackage.x20;
import defpackage.y20;
import defpackage.yy4;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;

@DynamiteApi
/* loaded from: classes.dex */
public class AppMeasurementDynamiteService extends ff4 {
    public rx4 e = null;
    public final Map<Integer, ry4> f = new f4();

    @Override // defpackage.yf4
    public void beginAdUnitExposure(@RecentlyNonNull String str, long j) throws IllegalStateException, RemoteException {
        g0();
        this.e.c().f(str, j);
    }

    @Override // defpackage.yf4
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) throws IllegalStateException, RemoteException {
        g0();
        this.e.s().r(str, str2, bundle);
    }

    @Override // defpackage.yf4
    public void clearMeasurementEnabled(long j) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        sz4VarS.f();
        sz4VarS.a.m().q(new mz4(sz4VarS, null));
    }

    @Override // defpackage.yf4
    public void endAdUnitExposure(@RecentlyNonNull String str, long j) throws IllegalStateException, RemoteException {
        g0();
        this.e.c().g(str, j);
    }

    public final void g0() {
        if (this.e == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // defpackage.yf4
    public void generateEventId(bg4 bg4Var) throws RemoteException {
        g0();
        this.e.t().Q(bg4Var, this.e.t().c0());
    }

    @Override // defpackage.yf4
    public void getAppInstanceId(bg4 bg4Var) throws IllegalStateException, RemoteException {
        g0();
        this.e.m().q(new uy4(this, bg4Var));
    }

    @Override // defpackage.yf4
    public void getCachedAppInstanceId(bg4 bg4Var) throws RemoteException {
        g0();
        this.e.t().P(bg4Var, this.e.s().g.get());
    }

    @Override // defpackage.yf4
    public void getConditionalUserProperties(String str, String str2, bg4 bg4Var) throws IllegalStateException, RemoteException {
        g0();
        this.e.m().q(new q25(this, bg4Var, str, str2));
    }

    @Override // defpackage.yf4
    public void getCurrentScreenClass(bg4 bg4Var) throws RemoteException {
        g0();
        a05 a05Var = this.e.s().a.y().c;
        this.e.t().P(bg4Var, a05Var != null ? a05Var.b : null);
    }

    @Override // defpackage.yf4
    public void getCurrentScreenName(bg4 bg4Var) throws RemoteException {
        g0();
        a05 a05Var = this.e.s().a.y().c;
        this.e.t().P(bg4Var, a05Var != null ? a05Var.a : null);
    }

    @Override // defpackage.yf4
    public void getGmpAppId(bg4 bg4Var) throws RemoteException {
        g0();
        this.e.t().P(bg4Var, this.e.s().s());
    }

    @Override // defpackage.yf4
    public void getMaxUserProperties(String str, bg4 bg4Var) throws RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        Objects.requireNonNull(sz4VarS);
        bi.g(str);
        cs4 cs4Var = sz4VarS.a.g;
        this.e.t().R(bg4Var, 25);
    }

    @Override // defpackage.yf4
    public void getTestFlag(bg4 bg4Var, int i) throws RemoteException {
        g0();
        if (i == 0) {
            p25 p25VarT = this.e.t();
            sz4 sz4VarS = this.e.s();
            Objects.requireNonNull(sz4VarS);
            AtomicReference atomicReference = new AtomicReference();
            p25VarT.P(bg4Var, (String) sz4VarS.a.m().r(atomicReference, 15000L, "String test flag value", new iz4(sz4VarS, atomicReference)));
            return;
        }
        if (i == 1) {
            p25 p25VarT2 = this.e.t();
            sz4 sz4VarS2 = this.e.s();
            Objects.requireNonNull(sz4VarS2);
            AtomicReference atomicReference2 = new AtomicReference();
            p25VarT2.Q(bg4Var, ((Long) sz4VarS2.a.m().r(atomicReference2, 15000L, "long test flag value", new jz4(sz4VarS2, atomicReference2))).longValue());
            return;
        }
        if (i == 2) {
            p25 p25VarT3 = this.e.t();
            sz4 sz4VarS3 = this.e.s();
            Objects.requireNonNull(sz4VarS3);
            AtomicReference atomicReference3 = new AtomicReference();
            double dDoubleValue = ((Double) sz4VarS3.a.m().r(atomicReference3, 15000L, "double test flag value", new lz4(sz4VarS3, atomicReference3))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", dDoubleValue);
            try {
                bg4Var.zzb(bundle);
                return;
            } catch (RemoteException e) {
                p25VarT3.a.a().i.b("Error returning double value to wrapper", e);
                return;
            }
        }
        if (i == 3) {
            p25 p25VarT4 = this.e.t();
            sz4 sz4VarS4 = this.e.s();
            Objects.requireNonNull(sz4VarS4);
            AtomicReference atomicReference4 = new AtomicReference();
            p25VarT4.R(bg4Var, ((Integer) sz4VarS4.a.m().r(atomicReference4, 15000L, "int test flag value", new kz4(sz4VarS4, atomicReference4))).intValue());
            return;
        }
        if (i != 4) {
            return;
        }
        p25 p25VarT5 = this.e.t();
        sz4 sz4VarS5 = this.e.s();
        Objects.requireNonNull(sz4VarS5);
        AtomicReference atomicReference5 = new AtomicReference();
        p25VarT5.T(bg4Var, ((Boolean) sz4VarS5.a.m().r(atomicReference5, 15000L, "boolean test flag value", new ez4(sz4VarS5, atomicReference5))).booleanValue());
    }

    @Override // defpackage.yf4
    public void getUserProperties(String str, String str2, boolean z, bg4 bg4Var) throws IllegalStateException, RemoteException {
        g0();
        this.e.m().q(new u05(this, bg4Var, str, str2, z));
    }

    @Override // defpackage.yf4
    public void initForTests(@RecentlyNonNull Map map) throws RemoteException {
        g0();
    }

    @Override // defpackage.yf4
    public void initialize(x20 x20Var, zzy zzyVar, long j) throws RemoteException {
        Context context = (Context) y20.l0(x20Var);
        rx4 rx4Var = this.e;
        if (rx4Var == null) {
            this.e = rx4.d(context, zzyVar, Long.valueOf(j));
        } else {
            rx4Var.a().i.a("Attempting to initialize multiple times");
        }
    }

    @Override // defpackage.yf4
    public void isDataCollectionEnabled(bg4 bg4Var) throws IllegalStateException, RemoteException {
        g0();
        this.e.m().q(new r25(this, bg4Var));
    }

    @Override // defpackage.yf4
    public void logEvent(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle, boolean z, boolean z2, long j) throws IllegalStateException, RemoteException {
        g0();
        this.e.s().D(str, str2, bundle, z, z2, j);
    }

    @Override // defpackage.yf4
    public void logEventAndBundle(String str, String str2, Bundle bundle, bg4 bg4Var, long j) throws IllegalStateException, RemoteException {
        g0();
        bi.g(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.e.m().q(new uz4(this, bg4Var, new zzas(str2, new zzaq(bundle), "app", j), str));
    }

    @Override // defpackage.yf4
    public void logHealthData(int i, @RecentlyNonNull String str, @RecentlyNonNull x20 x20Var, @RecentlyNonNull x20 x20Var2, @RecentlyNonNull x20 x20Var3) throws RemoteException {
        g0();
        this.e.a().u(i, true, false, str, x20Var == null ? null : y20.l0(x20Var), x20Var2 == null ? null : y20.l0(x20Var2), x20Var3 != null ? y20.l0(x20Var3) : null);
    }

    @Override // defpackage.yf4
    public void onActivityCreated(@RecentlyNonNull x20 x20Var, @RecentlyNonNull Bundle bundle, long j) throws RemoteException {
        g0();
        rz4 rz4Var = this.e.s().c;
        if (rz4Var != null) {
            this.e.s().w();
            rz4Var.onActivityCreated((Activity) y20.l0(x20Var), bundle);
        }
    }

    @Override // defpackage.yf4
    public void onActivityDestroyed(@RecentlyNonNull x20 x20Var, long j) throws RemoteException {
        g0();
        rz4 rz4Var = this.e.s().c;
        if (rz4Var != null) {
            this.e.s().w();
            rz4Var.onActivityDestroyed((Activity) y20.l0(x20Var));
        }
    }

    @Override // defpackage.yf4
    public void onActivityPaused(@RecentlyNonNull x20 x20Var, long j) throws IllegalStateException, RemoteException {
        g0();
        rz4 rz4Var = this.e.s().c;
        if (rz4Var != null) {
            this.e.s().w();
            rz4Var.onActivityPaused((Activity) y20.l0(x20Var));
        }
    }

    @Override // defpackage.yf4
    public void onActivityResumed(@RecentlyNonNull x20 x20Var, long j) throws IllegalStateException, RemoteException {
        g0();
        rz4 rz4Var = this.e.s().c;
        if (rz4Var != null) {
            this.e.s().w();
            rz4Var.onActivityResumed((Activity) y20.l0(x20Var));
        }
    }

    @Override // defpackage.yf4
    public void onActivitySaveInstanceState(x20 x20Var, bg4 bg4Var, long j) throws RemoteException {
        g0();
        rz4 rz4Var = this.e.s().c;
        Bundle bundle = new Bundle();
        if (rz4Var != null) {
            this.e.s().w();
            rz4Var.onActivitySaveInstanceState((Activity) y20.l0(x20Var), bundle);
        }
        try {
            bg4Var.zzb(bundle);
        } catch (RemoteException e) {
            this.e.a().i.b("Error returning bundle value to wrapper", e);
        }
    }

    @Override // defpackage.yf4
    public void onActivityStarted(@RecentlyNonNull x20 x20Var, long j) throws RemoteException {
        g0();
        if (this.e.s().c != null) {
            this.e.s().w();
        }
    }

    @Override // defpackage.yf4
    public void onActivityStopped(@RecentlyNonNull x20 x20Var, long j) throws RemoteException {
        g0();
        if (this.e.s().c != null) {
            this.e.s().w();
        }
    }

    @Override // defpackage.yf4
    public void performAction(Bundle bundle, bg4 bg4Var, long j) throws RemoteException {
        g0();
        bg4Var.zzb(null);
    }

    @Override // defpackage.yf4
    public void registerOnMeasurementEventListener(eg4 eg4Var) throws RemoteException {
        ry4 t25Var;
        g0();
        synchronized (this.f) {
            t25Var = this.f.get(Integer.valueOf(eg4Var.h()));
            if (t25Var == null) {
                t25Var = new t25(this, eg4Var);
                this.f.put(Integer.valueOf(eg4Var.h()), t25Var);
            }
        }
        sz4 sz4VarS = this.e.s();
        sz4VarS.f();
        if (sz4VarS.e.add(t25Var)) {
            return;
        }
        sz4VarS.a.a().i.a("OnEventListener already registered");
    }

    @Override // defpackage.yf4
    public void resetAnalyticsData(long j) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        sz4VarS.g.set(null);
        sz4VarS.a.m().q(new bz4(sz4VarS, j));
    }

    @Override // defpackage.yf4
    public void setConditionalUserProperty(@RecentlyNonNull Bundle bundle, long j) throws IllegalStateException, RemoteException {
        g0();
        if (bundle == null) {
            this.e.a().f.a("Conditional user property must not be null");
        } else {
            this.e.s().q(bundle, j);
        }
    }

    @Override // defpackage.yf4
    public void setConsent(@RecentlyNonNull Bundle bundle, long j) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        pc4.b();
        if (sz4VarS.a.g.s(null, ew4.E0)) {
            sz4VarS.x(bundle, 30, j);
        }
    }

    @Override // defpackage.yf4
    public void setConsentThirdParty(@RecentlyNonNull Bundle bundle, long j) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        pc4.b();
        if (sz4VarS.a.g.s(null, ew4.F0)) {
            sz4VarS.x(bundle, 10, j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
    
        if (r0 <= 100) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b9, code lost:
    
        if (r0 <= 100) goto L33;
     */
    @Override // defpackage.yf4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCurrentScreen(@androidx.annotation.RecentlyNonNull defpackage.x20 r3, @androidx.annotation.RecentlyNonNull java.lang.String r4, @androidx.annotation.RecentlyNonNull java.lang.String r5, long r6) throws java.lang.IllegalStateException, android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.setCurrentScreen(x20, java.lang.String, java.lang.String, long):void");
    }

    @Override // defpackage.yf4
    public void setDataCollectionEnabled(boolean z) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        sz4VarS.f();
        sz4VarS.a.m().q(new wy4(sz4VarS, z));
    }

    @Override // defpackage.yf4
    public void setDefaultEventParameters(@RecentlyNonNull Bundle bundle) throws IllegalStateException {
        g0();
        final sz4 sz4VarS = this.e.s();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        sz4VarS.a.m().q(new Runnable(sz4VarS, bundle2) { // from class: ty4
            public final sz4 e;
            public final Bundle f;

            {
                this.e = sz4VarS;
                this.f = bundle2;
            }

            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException, JSONException {
                sz4 sz4Var = this.e;
                Bundle bundle3 = this.f;
                Objects.requireNonNull(sz4Var);
                de4.b();
                if (sz4Var.a.g.s(null, ew4.y0)) {
                    if (bundle3 == null) {
                        sz4Var.a.q().B.b(new Bundle());
                        return;
                    }
                    Bundle bundleA = sz4Var.a.q().B.a();
                    for (String str : bundle3.keySet()) {
                        Object obj = bundle3.get(str);
                        if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                            if (sz4Var.a.t().o0(obj)) {
                                sz4Var.a.t().A(sz4Var.p, null, 27, null, null, 0);
                            }
                            sz4Var.a.a().k.c("Invalid default event parameter type. Name, value", str, obj);
                        } else if (p25.F(str)) {
                            sz4Var.a.a().k.b("Invalid default event parameter name. Name", str);
                        } else if (obj == null) {
                            bundleA.remove(str);
                        } else {
                            p25 p25VarT = sz4Var.a.t();
                            cs4 cs4Var = sz4Var.a.g;
                            if (p25VarT.p0("param", str, 100, obj)) {
                                sz4Var.a.t().z(bundleA, str, obj);
                            }
                        }
                    }
                    sz4Var.a.t();
                    int iH = sz4Var.a.g.h();
                    if (bundleA.size() > iH) {
                        Iterator it = new TreeSet(bundleA.keySet()).iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            i++;
                            if (i > iH) {
                                bundleA.remove(str2);
                            }
                        }
                        sz4Var.a.t().A(sz4Var.p, null, 26, null, null, 0);
                        sz4Var.a.a().k.a("Too many default event parameters set. Discarding beyond event parameter limit");
                    }
                    sz4Var.a.q().B.b(bundleA);
                    h15 h15VarZ = sz4Var.a.z();
                    h15VarZ.d();
                    h15VarZ.f();
                    h15VarZ.t(new p05(h15VarZ, h15VarZ.v(false), bundleA));
                }
            }
        });
    }

    @Override // defpackage.yf4
    public void setEventInterceptor(eg4 eg4Var) throws IllegalStateException, RemoteException {
        g0();
        s25 s25Var = new s25(this, eg4Var);
        if (this.e.m().n()) {
            this.e.s().p(s25Var);
        } else {
            this.e.m().q(new v15(this, s25Var));
        }
    }

    @Override // defpackage.yf4
    public void setInstanceIdProvider(gg4 gg4Var) throws RemoteException {
        g0();
    }

    @Override // defpackage.yf4
    public void setMeasurementEnabled(boolean z, long j) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        Boolean boolValueOf = Boolean.valueOf(z);
        sz4VarS.f();
        sz4VarS.a.m().q(new mz4(sz4VarS, boolValueOf));
    }

    @Override // defpackage.yf4
    public void setMinimumSessionDuration(long j) throws RemoteException {
        g0();
    }

    @Override // defpackage.yf4
    public void setSessionTimeoutDuration(long j) throws IllegalStateException, RemoteException {
        g0();
        sz4 sz4VarS = this.e.s();
        sz4VarS.a.m().q(new yy4(sz4VarS, j));
    }

    @Override // defpackage.yf4
    public void setUserId(@RecentlyNonNull String str, long j) throws IllegalStateException, RemoteException {
        g0();
        this.e.s().G(null, "_id", str, true, j);
    }

    @Override // defpackage.yf4
    public void setUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull x20 x20Var, boolean z, long j) throws IllegalStateException, RemoteException {
        g0();
        this.e.s().G(str, str2, y20.l0(x20Var), z, j);
    }

    @Override // defpackage.yf4
    public void unregisterOnMeasurementEventListener(eg4 eg4Var) throws RemoteException {
        ry4 ry4VarRemove;
        g0();
        synchronized (this.f) {
            ry4VarRemove = this.f.remove(Integer.valueOf(eg4Var.h()));
        }
        if (ry4VarRemove == null) {
            ry4VarRemove = new t25(this, eg4Var);
        }
        sz4 sz4VarS = this.e.s();
        sz4VarS.f();
        if (sz4VarS.e.remove(ry4VarRemove)) {
            return;
        }
        sz4VarS.a.a().i.a("OnEventListener had not been registered");
    }
}
