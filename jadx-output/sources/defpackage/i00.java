package defpackage;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.zzc;
import defpackage.n00;
import defpackage.r00;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public abstract class i00<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    public volatile zzc A;
    public AtomicInteger B;
    public int a;
    public long b;
    public long c;
    public int d;
    public long e;
    public volatile String f;
    public p10 g;
    public final Context h;
    public final Looper i;
    public final n00 j;
    public final gy k;
    public final Handler l;
    public final Object m;
    public final Object n;
    public t00 o;
    public c p;
    public T q;
    public final ArrayList<h<?>> r;
    public i s;
    public int t;
    public final a u;
    public final b v;
    public final int w;
    public final String x;
    public ConnectionResult y;
    public boolean z;
    public static final Feature[] C = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    public interface a {
        void Z(int i);

        void l0(Bundle bundle);
    }

    public interface b {
        void g0(ConnectionResult connectionResult);
    }

    public interface c {
        void a(ConnectionResult connectionResult);
    }

    public class d implements c {
        public d() {
        }

        @Override // i00.c
        public void a(ConnectionResult connectionResult) {
            if (connectionResult.n()) {
                i00 i00Var = i00.this;
                i00Var.getRemoteService(null, i00Var.d());
            } else {
                b bVar = i00.this.v;
                if (bVar != null) {
                    bVar.g0(connectionResult);
                }
            }
        }
    }

    public interface e {
    }

    public abstract class f extends h<Boolean> {
        public final int d;
        public final Bundle e;

        public f(int i, Bundle bundle) {
            super(Boolean.TRUE);
            this.d = i;
            this.e = bundle;
        }

        @Override // i00.h
        public final /* synthetic */ void a(Boolean bool) {
            int i = this.d;
            if (i == 0) {
                if (e()) {
                    return;
                }
                i00.this.m(1, null);
                d(new ConnectionResult(8, null));
                return;
            }
            if (i == 10) {
                i00.this.m(1, null);
                throw new IllegalStateException(String.format("A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. ", getClass().getSimpleName(), i00.this.f(), i00.this.e()));
            }
            i00.this.m(1, null);
            Bundle bundle = this.e;
            d(new ConnectionResult(this.d, bundle != null ? (PendingIntent) bundle.getParcelable(i00.KEY_PENDING_INTENT) : null));
        }

        @Override // i00.h
        public final void b() {
        }

        public abstract void d(ConnectionResult connectionResult);

        public abstract boolean e();
    }

    public final class g extends f24 {
        public g(Looper looper) {
            super(looper);
        }

        public static boolean a(Message message) {
            int i = message.what;
            return i == 2 || i == 1 || i == 7;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r8) {
            /*
                Method dump skipped, instructions count: 352
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: i00.g.handleMessage(android.os.Message):void");
        }
    }

    public abstract class h<TListener> {
        public TListener a;
        public boolean b = false;

        public h(TListener tlistener) {
            this.a = tlistener;
        }

        public abstract void a(TListener tlistener);

        public abstract void b();

        public final void c() {
            synchronized (this) {
                this.a = null;
            }
            synchronized (i00.this.r) {
                i00.this.r.remove(this);
            }
        }
    }

    public final class i implements ServiceConnection {
        public final int a;

        public i(int i) {
            this.a = i;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                i00.this.k();
                return;
            }
            synchronized (i00.this.n) {
                i00 i00Var = i00.this;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                i00Var.o = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof t00)) ? new s00(iBinder) : (t00) iInterfaceQueryLocalInterface;
            }
            i00.this.l(0, this.a);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            i00 i00Var;
            synchronized (i00.this.n) {
                i00Var = i00.this;
                i00Var.o = null;
            }
            Handler handler = i00Var.l;
            handler.sendMessage(handler.obtainMessage(6, this.a, 1));
        }
    }

    public static final class j extends r00.a {
        public i00 e;
        public final int f;

        public j(i00 i00Var, int i) {
            this.e = i00Var;
            this.f = i;
        }

        public final void g0(int i, IBinder iBinder, Bundle bundle) {
            bi.j(this.e, "onPostInitComplete can be called only once per call to getRemoteService");
            i00 i00Var = this.e;
            int i2 = this.f;
            Handler handler = i00Var.l;
            handler.sendMessage(handler.obtainMessage(1, i2, -1, new k(i, iBinder, bundle)));
            this.e = null;
        }
    }

    public final class k extends f {
        public final IBinder g;

        public k(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.g = iBinder;
        }

        @Override // i00.f
        public final void d(ConnectionResult connectionResult) {
            b bVar = i00.this.v;
            if (bVar != null) {
                bVar.g0(connectionResult);
            }
            i00.this.h(connectionResult);
        }

        @Override // i00.f
        public final boolean e() throws RemoteException {
            try {
                String interfaceDescriptor = this.g.getInterfaceDescriptor();
                if (!i00.this.e().equals(interfaceDescriptor)) {
                    String strE = i00.this.e();
                    Log.e("GmsClient", jo.d(jo.x(interfaceDescriptor, jo.x(strE, 34)), "service descriptor mismatch: ", strE, " vs. ", interfaceDescriptor));
                    return false;
                }
                IInterface iInterfaceB = i00.this.b(this.g);
                if (iInterfaceB == null || !(i00.n(i00.this, 2, 4, iInterfaceB) || i00.n(i00.this, 3, 4, iInterfaceB))) {
                    return false;
                }
                i00 i00Var = i00.this;
                i00Var.y = null;
                Bundle connectionHint = i00Var.getConnectionHint();
                a aVar = i00.this.u;
                if (aVar == null) {
                    return true;
                }
                aVar.l0(connectionHint);
                return true;
            } catch (RemoteException unused) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    public final class l extends f {
        public l(int i) {
            super(i, null);
        }

        @Override // i00.f
        public final void d(ConnectionResult connectionResult) {
            Objects.requireNonNull(i00.this);
            i00.this.p.a(connectionResult);
            i00.this.h(connectionResult);
        }

        @Override // i00.f
        public final boolean e() {
            i00.this.p.a(ConnectionResult.i);
            return true;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public i00(Context context, Looper looper, int i2, a aVar, b bVar, String str) {
        n00 n00VarA = n00.a(context);
        gy gyVar = gy.b;
        Objects.requireNonNull(aVar, "null reference");
        Objects.requireNonNull(bVar, "null reference");
        this(context, looper, n00VarA, gyVar, i2, aVar, bVar, null);
    }

    public static boolean n(i00 i00Var, int i2, int i3, IInterface iInterface) {
        boolean z;
        synchronized (i00Var.m) {
            if (i00Var.t != i2) {
                z = false;
            } else {
                i00Var.m(i3, iInterface);
                z = true;
            }
        }
        return z;
    }

    public static boolean o(i00 i00Var) throws ClassNotFoundException {
        if (i00Var.z || TextUtils.isEmpty(i00Var.e()) || TextUtils.isEmpty(null)) {
            return false;
        }
        try {
            Class.forName(i00Var.e());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public abstract T b(IBinder iBinder);

    public Bundle c() {
        return new Bundle();
    }

    public void checkAvailabilityAndConnect() {
        int iD = this.k.d(this.h, getMinApkVersion());
        if (iD == 0) {
            connect(new d());
            return;
        }
        m(1, null);
        d dVar = new d();
        bi.j(dVar, "Connection progress callbacks cannot be null.");
        this.p = dVar;
        Handler handler = this.l;
        handler.sendMessage(handler.obtainMessage(3, this.B.get(), iD, null));
    }

    public void connect(c cVar) {
        bi.j(cVar, "Connection progress callbacks cannot be null.");
        this.p = cVar;
        m(2, null);
    }

    public Set<Scope> d() {
        return Collections.emptySet();
    }

    public void disconnect(String str) {
        this.f = str;
        disconnect();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i2;
        T t;
        t00 t00Var;
        synchronized (this.m) {
            i2 = this.t;
            t = this.q;
        }
        synchronized (this.n) {
            t00Var = this.o;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i2 == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i2 == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i2 == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i2 == 4) {
            printWriter.print("CONNECTED");
        } else if (i2 != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) e()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (t00Var == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(t00Var.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.c > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j2 = this.c;
            String str2 = simpleDateFormat.format(new Date(this.c));
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 21);
            sb.append(j2);
            sb.append(StringUtils.SPACE);
            sb.append(str2);
            printWriterAppend.println(sb.toString());
        }
        if (this.b > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i3 = this.a;
            if (i3 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i3 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i3 != 3) {
                printWriter.append((CharSequence) String.valueOf(i3));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j3 = this.b;
            String str3 = simpleDateFormat.format(new Date(this.b));
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 21);
            sb2.append(j3);
            sb2.append(StringUtils.SPACE);
            sb2.append(str3);
            printWriterAppend2.println(sb2.toString());
        }
        if (this.e > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) bi.D(this.d));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j4 = this.e;
            String str4 = simpleDateFormat.format(new Date(this.e));
            StringBuilder sb3 = new StringBuilder(String.valueOf(str4).length() + 21);
            sb3.append(j4);
            sb3.append(StringUtils.SPACE);
            sb3.append(str4);
            printWriterAppend3.println(sb3.toString());
        }
    }

    public abstract String e();

    public abstract String f();

    public void g() {
        this.c = System.currentTimeMillis();
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return C;
    }

    public final Feature[] getAvailableFeatures() {
        zzc zzcVar = this.A;
        if (zzcVar == null) {
            return null;
        }
        return zzcVar.f;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public final Context getContext() {
        return this.h;
    }

    public String getEndpointPackageName() {
        p10 p10Var;
        if (!isConnected() || (p10Var = this.g) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        Objects.requireNonNull(p10Var);
        return "com.google.android.gms";
    }

    public String getLastDisconnectMessage() {
        return this.f;
    }

    public final Looper getLooper() {
        return this.i;
    }

    public int getMinApkVersion() {
        return gy.a;
    }

    public void getRemoteService(q00 q00Var, Set<Scope> set) {
        Bundle bundleC = c();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.w);
        getServiceRequest.h = this.h.getPackageName();
        getServiceRequest.k = bundleC;
        if (set != null) {
            getServiceRequest.j = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (requiresSignIn()) {
            getServiceRequest.l = getAccount() != null ? getAccount() : new Account(DEFAULT_ACCOUNT, "com.google");
            if (q00Var != null) {
                getServiceRequest.i = q00Var.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.l = getAccount();
        }
        getServiceRequest.m = C;
        getServiceRequest.n = getApiFeatures();
        try {
            synchronized (this.n) {
                t00 t00Var = this.o;
                if (t00Var != null) {
                    t00Var.C1(new j(this, this.B.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            triggerConnectionSuspended(3);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i2 = this.B.get();
            Handler handler = this.l;
            handler.sendMessage(handler.obtainMessage(1, i2, -1, new k(8, null, null)));
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i22 = this.B.get();
            Handler handler2 = this.l;
            handler2.sendMessage(handler2.obtainMessage(1, i22, -1, new k(8, null, null)));
        }
    }

    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.m) {
            if (this.t == 5) {
                throw new DeadObjectException();
            }
            if (!isConnected()) {
                throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
            }
            bi.m(this.q != null, "Client is connected but service is null");
            t = this.q;
        }
        return t;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.n) {
            t00 t00Var = this.o;
            if (t00Var == null) {
                return null;
            }
            return t00Var.asBinder();
        }
    }

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public void h(ConnectionResult connectionResult) {
        this.d = connectionResult.f;
        this.e = System.currentTimeMillis();
    }

    public void i(int i2, T t) {
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.m) {
            z = this.t == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.m) {
            int i2 = this.t;
            z = i2 == 2 || i2 == 3;
        }
        return z;
    }

    public final String j() {
        String str = this.x;
        return str == null ? this.h.getClass().getName() : str;
    }

    public final void k() {
        boolean z;
        int i2;
        synchronized (this.m) {
            z = this.t == 3;
        }
        if (z) {
            i2 = 5;
            this.z = true;
        } else {
            i2 = 4;
        }
        Handler handler = this.l;
        handler.sendMessage(handler.obtainMessage(i2, this.B.get(), 16));
    }

    public final void l(int i2, int i3) {
        Handler handler = this.l;
        handler.sendMessage(handler.obtainMessage(7, i3, -1, new l(i2)));
    }

    public final void m(int i2, T t) {
        p10 p10Var;
        bi.b((i2 == 4) == (t != null));
        synchronized (this.m) {
            this.t = i2;
            this.q = t;
            i(i2, t);
            if (i2 == 1) {
                i iVar = this.s;
                if (iVar != null) {
                    n00 n00Var = this.j;
                    String str = this.g.a;
                    String strJ = j();
                    Objects.requireNonNull(this.g);
                    Objects.requireNonNull(n00Var);
                    n00Var.c(new n00.a(str, "com.google.android.gms", 129, false), iVar, strJ);
                    this.s = null;
                }
            } else if (i2 == 2 || i2 == 3) {
                if (this.s != null && (p10Var = this.g) != null) {
                    String str2 = p10Var.a;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 70 + "com.google.android.gms".length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(str2);
                    sb.append(" on ");
                    sb.append("com.google.android.gms");
                    Log.e("GmsClient", sb.toString());
                    n00 n00Var2 = this.j;
                    String str3 = this.g.a;
                    i iVar2 = this.s;
                    String strJ2 = j();
                    Objects.requireNonNull(this.g);
                    Objects.requireNonNull(n00Var2);
                    n00Var2.c(new n00.a(str3, "com.google.android.gms", 129, false), iVar2, strJ2);
                    this.B.incrementAndGet();
                }
                this.s = new i(this.B.get());
                String strF = f();
                Object obj = n00.a;
                this.g = new p10("com.google.android.gms", strF, false, 129, false);
                n00 n00Var3 = this.j;
                i iVar3 = this.s;
                String strJ3 = j();
                Objects.requireNonNull(this.g);
                if (!n00Var3.b(new n00.a(strF, "com.google.android.gms", 129, false), iVar3, strJ3)) {
                    String str4 = this.g.a;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str4).length() + 34 + "com.google.android.gms".length());
                    sb2.append("unable to connect to service: ");
                    sb2.append(str4);
                    sb2.append(" on ");
                    sb2.append("com.google.android.gms");
                    Log.e("GmsClient", sb2.toString());
                    l(16, this.B.get());
                }
            } else if (i2 == 4) {
                g();
            }
        }
    }

    public void onUserSignOut(e eVar) {
        mz mzVar = (mz) eVar;
        zy.this.n.post(new nz(mzVar));
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void triggerConnectionSuspended(int i2) {
        Handler handler = this.l;
        handler.sendMessage(handler.obtainMessage(6, this.B.get(), i2));
    }

    public void disconnect() {
        this.B.incrementAndGet();
        synchronized (this.r) {
            int size = this.r.size();
            for (int i2 = 0; i2 < size; i2++) {
                h<?> hVar = this.r.get(i2);
                synchronized (hVar) {
                    hVar.a = null;
                }
            }
            this.r.clear();
        }
        synchronized (this.n) {
            this.o = null;
        }
        m(1, null);
    }

    public i00(Context context, Looper looper, n00 n00Var, gy gyVar, int i2, a aVar, b bVar, String str) {
        this.f = null;
        this.m = new Object();
        this.n = new Object();
        this.r = new ArrayList<>();
        this.t = 1;
        this.y = null;
        this.z = false;
        this.A = null;
        this.B = new AtomicInteger(0);
        bi.j(context, "Context must not be null");
        this.h = context;
        bi.j(looper, "Looper must not be null");
        this.i = looper;
        bi.j(n00Var, "Supervisor must not be null");
        this.j = n00Var;
        bi.j(gyVar, "API availability must not be null");
        this.k = gyVar;
        this.l = new g(looper);
        this.w = i2;
        this.u = aVar;
        this.v = bVar;
        this.x = str;
    }
}
