package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import defpackage.ed5;
import defpackage.uc5;
import defpackage.xc5;
import defpackage.yc5;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class bd5<T extends IInterface> implements ed5 {
    public final Context a;
    public final Handler b;
    public T c;
    public ArrayList<ed5.a> d;
    public ArrayList<ed5.b> g;
    public ServiceConnection i;
    public final ArrayList<ed5.a> e = new ArrayList<>();
    public boolean f = false;
    public final ArrayList<c<?>> h = new ArrayList<>();
    public boolean j = false;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            nc5.values();
            int[] iArr = new int[12];
            a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public final class b extends Handler {
        public b() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            TListener tlistener;
            int i = message.what;
            if (i == 3) {
                bd5.this.d((nc5) message.obj);
                return;
            }
            if (i == 4) {
                synchronized (bd5.this.d) {
                    bd5 bd5Var = bd5.this;
                    if (bd5Var.j && bd5Var.e() && bd5.this.d.contains(message.obj)) {
                        ((ed5.a) message.obj).t();
                    }
                }
                return;
            }
            if (i != 2 || bd5.this.e()) {
                int i2 = message.what;
                if (i2 == 2 || i2 == 1) {
                    c cVar = (c) message.obj;
                    synchronized (cVar) {
                        tlistener = cVar.a;
                    }
                    cVar.a(tlistener);
                }
            }
        }
    }

    public abstract class c<TListener> {
        public TListener a;

        public c(bd5 bd5Var, TListener tlistener) {
            this.a = tlistener;
            synchronized (bd5Var.h) {
                bd5Var.h.add(this);
            }
        }

        public abstract void a(TListener tlistener);
    }

    public final class d extends c<Boolean> {
        public final nc5 b;
        public final IBinder c;

        public d(String str, IBinder iBinder) {
            super(bd5.this, Boolean.TRUE);
            nc5 nc5VarValueOf = nc5.UNKNOWN_ERROR;
            try {
                nc5VarValueOf = nc5.valueOf(str);
            } catch (IllegalArgumentException | NullPointerException unused) {
            }
            this.b = nc5VarValueOf;
            this.c = iBinder;
        }

        @Override // bd5.c
        public final void a(Boolean bool) throws RemoteException {
            T c0058a;
            if (bool != null) {
                if (a.a[this.b.ordinal()] != 1) {
                    bd5.this.d(this.b);
                    return;
                }
                try {
                    String interfaceDescriptor = this.c.getInterfaceDescriptor();
                    Objects.requireNonNull(bd5.this);
                    if ("com.google.android.youtube.player.internal.IYouTubeService".equals(interfaceDescriptor)) {
                        bd5 bd5Var = bd5.this;
                        IBinder iBinder = this.c;
                        Objects.requireNonNull((zc5) bd5Var);
                        int i = yc5.a.e;
                        if (iBinder == null) {
                            c0058a = null;
                        } else {
                            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IYouTubeService");
                            c0058a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof yc5)) ? new yc5.a.C0058a(iBinder) : (yc5) iInterfaceQueryLocalInterface;
                        }
                        bd5Var.c = c0058a;
                        bd5 bd5Var2 = bd5.this;
                        if (bd5Var2.c != null) {
                            bd5Var2.f();
                            return;
                        }
                    }
                } catch (RemoteException unused) {
                }
                bd5.this.c();
                bd5.this.d(nc5.INTERNAL_ERROR);
            }
        }
    }

    public final class e extends uc5.a {
        public e() {
        }
    }

    public final class f implements ServiceConnection {
        public f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v3, types: [xc5] */
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            xc5.a.C0057a c0057a;
            xc5.a.C0057a c0057a2;
            bd5 bd5Var = bd5.this;
            Objects.requireNonNull(bd5Var);
            try {
                int i = xc5.a.e;
                if (iBinder == null) {
                    c0057a2 = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.youtube.player.internal.IServiceBroker");
                    if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof xc5)) {
                        c0057a = new xc5.a.C0057a(iBinder);
                        e eVar = new e();
                        zc5 zc5Var = (zc5) bd5Var;
                        c0057a.q5(eVar, 1202, zc5Var.l, zc5Var.m, zc5Var.k, null);
                    }
                    c0057a2 = (xc5) iInterfaceQueryLocalInterface;
                }
                c0057a = c0057a2;
                e eVar2 = new e();
                zc5 zc5Var2 = (zc5) bd5Var;
                c0057a.q5(eVar2, 1202, zc5Var2.l, zc5Var2.m, zc5Var2.k, null);
            } catch (RemoteException unused) {
                Log.w("YouTubeClient", "service died");
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            bd5 bd5Var = bd5.this;
            bd5Var.c = null;
            bd5Var.g();
        }
    }

    public bd5(Context context, ed5.a aVar, ed5.b bVar) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Clients must be created on the UI thread.");
        }
        Objects.requireNonNull(context, "null reference");
        this.a = context;
        ArrayList<ed5.a> arrayList = new ArrayList<>();
        this.d = arrayList;
        Objects.requireNonNull(aVar, "null reference");
        arrayList.add(aVar);
        ArrayList<ed5.b> arrayList2 = new ArrayList<>();
        this.g = arrayList2;
        Objects.requireNonNull(bVar, "null reference");
        arrayList2.add(bVar);
        this.b = new b();
    }

    @Override // defpackage.ed5
    public final void b() throws PackageManager.NameNotFoundException {
        nc5 nc5Var;
        nc5 nc5Var2 = nc5.SUCCESS;
        boolean z = true;
        this.j = true;
        Context context = this.a;
        byte[][] bArr = mc5.a;
        try {
            PackageManager packageManager = context.getPackageManager();
            String strA = id5.a(context);
            if (mc5.a(packageManager.getPackageInfo(strA, 64))) {
                try {
                    Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(strA);
                    int identifier = resourcesForApplication.getIdentifier("youtube_api_version_code", "integer", strA.equals("com.google.android.youtube.googletvdev") ? "com.google.android.youtube.googletv" : strA);
                    if (identifier != 0 && 12 <= resourcesForApplication.getInteger(identifier) / 100) {
                        z = false;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                }
                nc5Var = z ? nc5.SERVICE_VERSION_UPDATE_REQUIRED : !packageManager.getApplicationInfo(strA, 0).enabled ? nc5.SERVICE_DISABLED : nc5Var2;
            } else {
                nc5Var = nc5.SERVICE_INVALID;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            nc5Var = nc5.SERVICE_MISSING;
        }
        if (nc5Var != nc5Var2) {
            Handler handler = this.b;
            handler.sendMessage(handler.obtainMessage(3, nc5Var));
            return;
        }
        Intent intent = new Intent("com.google.android.youtube.api.service.START").setPackage(id5.a(this.a));
        if (this.i != null) {
            Log.e("YouTubeClient", "Calling connect() while still connected, missing disconnect().");
            c();
        }
        f fVar = new f();
        this.i = fVar;
        if (this.a.bindService(intent, fVar, 129)) {
            return;
        }
        Handler handler2 = this.b;
        handler2.sendMessage(handler2.obtainMessage(3, nc5.ERROR_CONNECTING_TO_SERVICE));
    }

    public final void c() {
        ServiceConnection serviceConnection = this.i;
        if (serviceConnection != null) {
            try {
                this.a.unbindService(serviceConnection);
            } catch (IllegalArgumentException e2) {
                Log.w("YouTubeClient", "Unexpected error from unbindService()", e2);
            }
        }
        this.c = null;
        this.i = null;
    }

    public final void d(nc5 nc5Var) {
        this.b.removeMessages(4);
        synchronized (this.g) {
            ArrayList<ed5.b> arrayList = this.g;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (!this.j) {
                    return;
                }
                if (this.g.contains(arrayList.get(i))) {
                    arrayList.get(i).a(nc5Var);
                }
            }
        }
    }

    public final boolean e() {
        return this.c != null;
    }

    public final void f() {
        synchronized (this.d) {
            boolean z = true;
            if (!(!this.f)) {
                throw new IllegalStateException();
            }
            this.b.removeMessages(4);
            this.f = true;
            if (this.e.size() != 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalStateException();
            }
            ArrayList<ed5.a> arrayList = this.d;
            int size = arrayList.size();
            for (int i = 0; i < size && this.j && e(); i++) {
                if (!this.e.contains(arrayList.get(i))) {
                    arrayList.get(i).t();
                }
            }
            this.e.clear();
            this.f = false;
        }
    }

    public final void g() {
        this.b.removeMessages(4);
        synchronized (this.d) {
            this.f = true;
            ArrayList<ed5.a> arrayList = this.d;
            int size = arrayList.size();
            for (int i = 0; i < size && this.j; i++) {
                if (this.d.contains(arrayList.get(i))) {
                    arrayList.get(i).a();
                }
            }
            this.f = false;
        }
    }
}
