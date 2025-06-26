package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import defpackage.i00;
import defpackage.ny;
import defpackage.qy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class zy implements Handler.Callback {
    public static final Status o = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status p = new Status(4, "The user must be signed in to make this API call.");
    public static final Object q = new Object();
    public static zy r;
    public final Context f;
    public final fy g;
    public final p00 h;
    public final Handler n;
    public long e = 10000;
    public final AtomicInteger i = new AtomicInteger(1);
    public final AtomicInteger j = new AtomicInteger(0);
    public final Map<b00<?>, a<?>> k = new ConcurrentHashMap(5, 0.75f, 1);
    public final Set<b00<?>> l = new h4(0);
    public final Set<b00<?>> m = new h4(0);

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object] */
    public class a<O extends ny.d> implements qy.a, qy.b {
        public final ny.f f;
        public final ny.b g;
        public final b00<O> h;
        public final ez i;
        public final int l;
        public final tz m;
        public boolean n;
        public final Queue<iz> e = new LinkedList();
        public final Set<c00> j = new HashSet();
        public final Map<cz<?>, rz> k = new HashMap();
        public final List<b> o = new ArrayList();
        public ConnectionResult p = null;

        public a(py<O> pyVar) {
            Looper looper = zy.this.n.getLooper();
            j00 j00VarA = pyVar.a().a();
            ny<O> nyVar = pyVar.b;
            bi.m(nyVar.a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
            ny.f fVarA = nyVar.a.a(pyVar.a, looper, j00VarA, pyVar.c, this, this);
            this.f = fVarA;
            if (fVarA instanceof y00) {
                Objects.requireNonNull((y00) fVarA);
                this.g = null;
            } else {
                this.g = fVarA;
            }
            this.h = pyVar.d;
            this.i = new ez();
            this.l = pyVar.f;
            if (fVarA.requiresSignIn()) {
                this.m = new tz(zy.this.f, zy.this.n, pyVar.a().a());
            } else {
                this.m = null;
            }
        }

        @Override // qy.a
        public final void Z(int i) {
            if (Looper.myLooper() == zy.this.n.getLooper()) {
                g();
            } else {
                zy.this.n.post(new lz(this));
            }
        }

        public final void a() {
            bi.e(zy.this.n);
            if (this.f.isConnected() || this.f.isConnecting()) {
                return;
            }
            zy zyVar = zy.this;
            p00 p00Var = zyVar.h;
            Context context = zyVar.f;
            ny.f fVar = this.f;
            Objects.requireNonNull(p00Var);
            Objects.requireNonNull(context, "null reference");
            Objects.requireNonNull(fVar, "null reference");
            int iD = 0;
            if (fVar.requiresGooglePlayServices()) {
                int minApkVersion = fVar.getMinApkVersion();
                int i = p00Var.a.get(minApkVersion, -1);
                if (i != -1) {
                    iD = i;
                } else {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= p00Var.a.size()) {
                            iD = i;
                            break;
                        }
                        int iKeyAt = p00Var.a.keyAt(i2);
                        if (iKeyAt > minApkVersion && p00Var.a.get(iKeyAt) == 0) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (iD == -1) {
                        iD = p00Var.b.d(context, minApkVersion);
                    }
                    p00Var.a.put(minApkVersion, iD);
                }
            }
            if (iD != 0) {
                g0(new ConnectionResult(iD, null));
                return;
            }
            zy zyVar2 = zy.this;
            ny.f fVar2 = this.f;
            c cVar = zyVar2.new c(fVar2, this.h);
            if (fVar2.requiresSignIn()) {
                tz tzVar = this.m;
                u35 u35Var = tzVar.j;
                if (u35Var != null) {
                    u35Var.disconnect();
                }
                tzVar.i.h = Integer.valueOf(System.identityHashCode(tzVar));
                ny.a<? extends u35, h35> aVar = tzVar.g;
                Context context2 = tzVar.e;
                Looper looper = tzVar.f.getLooper();
                j00 j00Var = tzVar.i;
                tzVar.j = (u35) aVar.a(context2, looper, j00Var, j00Var.g, tzVar, tzVar);
                tzVar.k = cVar;
                Set<Scope> set = tzVar.h;
                if (set == null || set.isEmpty()) {
                    tzVar.f.post(new uz(tzVar));
                } else {
                    tzVar.j.connect();
                }
            }
            this.f.connect(cVar);
        }

        public final boolean b() {
            return this.f.requiresSignIn();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Feature c(Feature[] featureArr) {
            if (featureArr != null && featureArr.length != 0) {
                Feature[] availableFeatures = this.f.getAvailableFeatures();
                if (availableFeatures == null) {
                    availableFeatures = new Feature[0];
                }
                f4 f4Var = new f4(availableFeatures.length);
                for (Feature feature : availableFeatures) {
                    f4Var.put(feature.e, Long.valueOf(feature.n()));
                }
                for (Feature feature2 : featureArr) {
                    if (!f4Var.containsKey(feature2.e) || ((Long) f4Var.get(feature2.e)).longValue() < feature2.n()) {
                        return feature2;
                    }
                }
            }
            return null;
        }

        public final void d(iz izVar) {
            bi.e(zy.this.n);
            if (this.f.isConnected()) {
                if (e(izVar)) {
                    l();
                    return;
                } else {
                    this.e.add(izVar);
                    return;
                }
            }
            this.e.add(izVar);
            ConnectionResult connectionResult = this.p;
            if (connectionResult != null) {
                if ((connectionResult.f == 0 || connectionResult.g == null) ? false : true) {
                    g0(connectionResult);
                    return;
                }
            }
            a();
        }

        public final boolean e(iz izVar) throws Resources.NotFoundException {
            if (!(izVar instanceof sz)) {
                n(izVar);
                return true;
            }
            sz szVar = (sz) izVar;
            Feature featureC = c(szVar.f(this));
            if (featureC == null) {
                n(izVar);
                return true;
            }
            if (!szVar.g(this)) {
                szVar.d(new vy(featureC));
                return false;
            }
            b bVar = new b(this.h, featureC, null);
            int iIndexOf = this.o.indexOf(bVar);
            if (iIndexOf >= 0) {
                b bVar2 = this.o.get(iIndexOf);
                zy.this.n.removeMessages(15, bVar2);
                Handler handler = zy.this.n;
                Message messageObtain = Message.obtain(handler, 15, bVar2);
                Objects.requireNonNull(zy.this);
                handler.sendMessageDelayed(messageObtain, 5000L);
                return false;
            }
            this.o.add(bVar);
            Handler handler2 = zy.this.n;
            Message messageObtain2 = Message.obtain(handler2, 15, bVar);
            Objects.requireNonNull(zy.this);
            handler2.sendMessageDelayed(messageObtain2, 5000L);
            Handler handler3 = zy.this.n;
            Message messageObtain3 = Message.obtain(handler3, 16, bVar);
            Objects.requireNonNull(zy.this);
            handler3.sendMessageDelayed(messageObtain3, 120000L);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            synchronized (zy.q) {
                Objects.requireNonNull(zy.this);
            }
            zy.this.c(connectionResult, this.l);
            return false;
        }

        public final void f() {
            j();
            p(ConnectionResult.i);
            k();
            Iterator<rz> it = this.k.values().iterator();
            if (it.hasNext()) {
                Objects.requireNonNull(it.next());
                throw null;
            }
            h();
            l();
        }

        public final void g() {
            j();
            this.n = true;
            ez ezVar = this.i;
            Objects.requireNonNull(ezVar);
            ezVar.a(true, xz.a);
            Handler handler = zy.this.n;
            Message messageObtain = Message.obtain(handler, 9, this.h);
            Objects.requireNonNull(zy.this);
            handler.sendMessageDelayed(messageObtain, 5000L);
            Handler handler2 = zy.this.n;
            Message messageObtain2 = Message.obtain(handler2, 11, this.h);
            Objects.requireNonNull(zy.this);
            handler2.sendMessageDelayed(messageObtain2, 120000L);
            zy.this.h.a.clear();
        }

        @Override // qy.b
        public final void g0(ConnectionResult connectionResult) {
            u35 u35Var;
            bi.e(zy.this.n);
            tz tzVar = this.m;
            if (tzVar != null && (u35Var = tzVar.j) != null) {
                u35Var.disconnect();
            }
            j();
            zy.this.h.a.clear();
            p(connectionResult);
            if (connectionResult.f == 4) {
                m(zy.p);
                return;
            }
            if (this.e.isEmpty()) {
                this.p = connectionResult;
                return;
            }
            synchronized (zy.q) {
                Objects.requireNonNull(zy.this);
            }
            if (zy.this.c(connectionResult, this.l)) {
                return;
            }
            if (connectionResult.f == 18) {
                this.n = true;
            }
            if (!this.n) {
                String str = this.h.b.c;
                m(new Status(17, jo.c(jo.x(str, 38), "API: ", str, " is not available on this device.")));
            } else {
                Handler handler = zy.this.n;
                Message messageObtain = Message.obtain(handler, 9, this.h);
                Objects.requireNonNull(zy.this);
                handler.sendMessageDelayed(messageObtain, 5000L);
            }
        }

        public final void h() {
            ArrayList arrayList = new ArrayList(this.e);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                iz izVar = (iz) obj;
                if (!this.f.isConnected()) {
                    return;
                }
                if (e(izVar)) {
                    this.e.remove(izVar);
                }
            }
        }

        public final void i() {
            bi.e(zy.this.n);
            Status status = zy.o;
            m(status);
            ez ezVar = this.i;
            Objects.requireNonNull(ezVar);
            ezVar.a(false, status);
            for (cz czVar : (cz[]) this.k.keySet().toArray(new cz[this.k.size()])) {
                d(new a00(czVar, new f45()));
            }
            p(new ConnectionResult(4));
            if (this.f.isConnected()) {
                this.f.onUserSignOut(new mz(this));
            }
        }

        public final void j() {
            bi.e(zy.this.n);
            this.p = null;
        }

        public final void k() {
            if (this.n) {
                zy.this.n.removeMessages(11, this.h);
                zy.this.n.removeMessages(9, this.h);
                this.n = false;
            }
        }

        public final void l() {
            zy.this.n.removeMessages(12, this.h);
            Handler handler = zy.this.n;
            handler.sendMessageDelayed(handler.obtainMessage(12, this.h), zy.this.e);
        }

        @Override // qy.a
        public final void l0(Bundle bundle) {
            if (Looper.myLooper() == zy.this.n.getLooper()) {
                f();
            } else {
                zy.this.n.post(new kz(this));
            }
        }

        public final void m(Status status) {
            bi.e(zy.this.n);
            Iterator<iz> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().a(status);
            }
            this.e.clear();
        }

        public final void n(iz izVar) {
            izVar.c(this.i, b());
            try {
                izVar.b(this);
            } catch (DeadObjectException unused) {
                Z(1);
                this.f.disconnect();
            }
        }

        public final boolean o(boolean z) {
            bi.e(zy.this.n);
            if (!this.f.isConnected() || this.k.size() != 0) {
                return false;
            }
            ez ezVar = this.i;
            if (!((ezVar.a.isEmpty() && ezVar.b.isEmpty()) ? false : true)) {
                this.f.disconnect();
                return true;
            }
            if (z) {
                l();
            }
            return false;
        }

        public final void p(ConnectionResult connectionResult) {
            Iterator<c00> it = this.j.iterator();
            if (!it.hasNext()) {
                this.j.clear();
                return;
            }
            c00 next = it.next();
            if (bi.B(connectionResult, ConnectionResult.i)) {
                this.f.getEndpointPackageName();
            }
            Objects.requireNonNull(next);
            throw null;
        }
    }

    public static class b {
        public final b00<?> a;
        public final Feature b;

        public b(b00 b00Var, Feature feature, jz jzVar) {
            this.a = b00Var;
            this.b = feature;
        }

        public final boolean equals(Object obj) {
            if (obj != null && (obj instanceof b)) {
                b bVar = (b) obj;
                if (bi.B(this.a, bVar.a) && bi.B(this.b, bVar.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b});
        }

        public final String toString() {
            w00 w00Var = new w00(this, null);
            w00Var.a("key", this.a);
            w00Var.a("feature", this.b);
            return w00Var.toString();
        }
    }

    public class c implements wz, i00.c {
        public final ny.f a;
        public final b00<?> b;
        public q00 c = null;
        public Set<Scope> d = null;
        public boolean e = false;

        public c(ny.f fVar, b00<?> b00Var) {
            this.a = fVar;
            this.b = b00Var;
        }

        @Override // i00.c
        public final void a(ConnectionResult connectionResult) {
            zy.this.n.post(new oz(this, connectionResult));
        }

        public final void b(ConnectionResult connectionResult) {
            a<?> aVar = zy.this.k.get(this.b);
            bi.e(zy.this.n);
            aVar.f.disconnect();
            aVar.g0(connectionResult);
        }
    }

    public zy(Context context, Looper looper, fy fyVar) {
        this.f = context;
        tv3 tv3Var = new tv3(looper, this);
        this.n = tv3Var;
        this.g = fyVar;
        this.h = new p00(fyVar);
        tv3Var.sendMessage(tv3Var.obtainMessage(6));
    }

    public static zy a(Context context) {
        zy zyVar;
        synchronized (q) {
            if (r == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                Looper looper = handlerThread.getLooper();
                Context applicationContext = context.getApplicationContext();
                Object obj = fy.c;
                r = new zy(applicationContext, looper, fy.d);
            }
            zyVar = r;
        }
        return zyVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(py<?> pyVar) {
        Object obj = pyVar.d;
        a<?> aVar = this.k.get(obj);
        if (aVar == null) {
            aVar = new a<>(pyVar);
            this.k.put(obj, aVar);
        }
        if (aVar.b()) {
            this.m.add(obj);
        }
        aVar.a();
    }

    public final boolean c(ConnectionResult connectionResult, int i) throws Resources.NotFoundException {
        PendingIntent activity;
        fy fyVar = this.g;
        Context context = this.f;
        Objects.requireNonNull(fyVar);
        int i2 = connectionResult.f;
        if ((i2 == 0 || connectionResult.g == null) ? false : true) {
            activity = connectionResult.g;
        } else {
            Intent intentB = fyVar.b(context, i2, null);
            activity = intentB == null ? null : PendingIntent.getActivity(context, 0, intentB, 134217728);
        }
        if (activity == null) {
            return false;
        }
        int i3 = connectionResult.f;
        int i4 = GoogleApiActivity.f;
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", activity);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", true);
        fyVar.f(context, i3, PendingIntent.getActivity(context, 0, intent, 134217728));
        return true;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Feature[] featureArrF;
        int i = message.what;
        int i2 = 0;
        a<?> aVar = null;
        switch (i) {
            case 1:
                this.e = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.n.removeMessages(12);
                for (b00<?> b00Var : this.k.keySet()) {
                    Handler handler = this.n;
                    handler.sendMessageDelayed(handler.obtainMessage(12, b00Var), this.e);
                }
                return true;
            case 2:
                Objects.requireNonNull((c00) message.obj);
                throw null;
            case 3:
                for (a<?> aVar2 : this.k.values()) {
                    aVar2.j();
                    aVar2.a();
                }
                return true;
            case 4:
            case 8:
            case 13:
                qz qzVar = (qz) message.obj;
                a<?> aVar3 = this.k.get(qzVar.c.d);
                if (aVar3 == null) {
                    b(qzVar.c);
                    aVar3 = this.k.get(qzVar.c.d);
                }
                if (!aVar3.b() || this.j.get() == qzVar.b) {
                    aVar3.d(qzVar.a);
                } else {
                    qzVar.a.a(o);
                    aVar3.i();
                }
                return true;
            case 5:
                int i3 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<a<?>> it = this.k.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        a<?> next = it.next();
                        if (next.l == i3) {
                            aVar = next;
                        }
                    }
                }
                if (aVar != null) {
                    fy fyVar = this.g;
                    int i4 = connectionResult.f;
                    Objects.requireNonNull(fyVar);
                    boolean z = ky.a;
                    String strC = ConnectionResult.C(i4);
                    String str = connectionResult.h;
                    aVar.m(new Status(17, jo.d(jo.x(str, jo.x(strC, 69)), "Error resolution was canceled by the user, original error message: ", strC, ": ", str)));
                } else {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i3);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                }
                return true;
            case 6:
                if (this.f.getApplicationContext() instanceof Application) {
                    xy.a((Application) this.f.getApplicationContext());
                    xy xyVar = xy.i;
                    jz jzVar = new jz(this);
                    Objects.requireNonNull(xyVar);
                    synchronized (xyVar) {
                        xyVar.g.add(jzVar);
                    }
                    if (!xyVar.f.get()) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!xyVar.f.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            xyVar.e.set(true);
                        }
                    }
                    if (!xyVar.e.get()) {
                        this.e = 300000L;
                    }
                }
                return true;
            case 7:
                b((py) message.obj);
                return true;
            case 9:
                if (this.k.containsKey(message.obj)) {
                    a<?> aVar4 = this.k.get(message.obj);
                    bi.e(zy.this.n);
                    if (aVar4.n) {
                        aVar4.a();
                    }
                }
                return true;
            case 10:
                Iterator<b00<?>> it2 = this.m.iterator();
                while (it2.hasNext()) {
                    this.k.remove(it2.next()).i();
                }
                this.m.clear();
                return true;
            case 11:
                if (this.k.containsKey(message.obj)) {
                    a<?> aVar5 = this.k.get(message.obj);
                    bi.e(zy.this.n);
                    if (aVar5.n) {
                        aVar5.k();
                        zy zyVar = zy.this;
                        aVar5.m(zyVar.g.c(zyVar.f) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                        aVar5.f.disconnect();
                    }
                }
                return true;
            case 12:
                if (this.k.containsKey(message.obj)) {
                    this.k.get(message.obj).o(true);
                }
                return true;
            case 14:
                Objects.requireNonNull((gz) message.obj);
                if (!this.k.containsKey(null)) {
                    throw null;
                }
                this.k.get(null).o(false);
                throw null;
            case 15:
                b bVar = (b) message.obj;
                if (this.k.containsKey(bVar.a)) {
                    a<?> aVar6 = this.k.get(bVar.a);
                    if (aVar6.o.contains(bVar) && !aVar6.n) {
                        if (aVar6.f.isConnected()) {
                            aVar6.h();
                        } else {
                            aVar6.a();
                        }
                    }
                }
                return true;
            case 16:
                b bVar2 = (b) message.obj;
                if (this.k.containsKey(bVar2.a)) {
                    a<?> aVar7 = this.k.get(bVar2.a);
                    if (aVar7.o.remove(bVar2)) {
                        zy.this.n.removeMessages(15, bVar2);
                        zy.this.n.removeMessages(16, bVar2);
                        Feature feature = bVar2.b;
                        ArrayList arrayList = new ArrayList(aVar7.e.size());
                        for (iz izVar : aVar7.e) {
                            if ((izVar instanceof sz) && (featureArrF = ((sz) izVar).f(aVar7)) != null && bi.n(featureArrF, feature)) {
                                arrayList.add(izVar);
                            }
                        }
                        int size = arrayList.size();
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            iz izVar2 = (iz) obj;
                            aVar7.e.remove(izVar2);
                            izVar2.d(new vy(feature));
                        }
                    }
                }
                return true;
            default:
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("Unknown message id: ");
                sb2.append(i);
                Log.w("GoogleApiManager", sb2.toString());
                return false;
        }
    }
}
