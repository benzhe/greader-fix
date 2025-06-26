package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import defpackage.c27;
import defpackage.e27;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public class t17 {
    public final b a;
    public final Context b;
    public final ExecutorService c;
    public final u17 d;
    public final Map<String, n17> e;
    public final Map<Object, l17> f;
    public final Map<Object, l17> g;
    public final Set<Object> h;
    public final Handler i;
    public final Handler j;
    public final o17 k;
    public final l27 l;
    public final List<n17> m;
    public final c n;
    public final boolean o;
    public boolean p;

    public static class a extends Handler {
        public final t17 a;

        /* renamed from: t17$a$a, reason: collision with other inner class name */
        public class RunnableC0039a implements Runnable {
            public final /* synthetic */ Message e;

            public RunnableC0039a(a aVar, Message message) {
                this.e = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                StringBuilder sbZ = jo.z("Unknown handler message received: ");
                sbZ.append(this.e.what);
                throw new AssertionError(sbZ.toString());
            }
        }

        public a(Looper looper, t17 t17Var) {
            super(looper);
            this.a = t17Var;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean zG;
            Object objD;
            NetworkInfo activeNetworkInfo = null;
            ArrayList arrayList = null;
            switch (message.what) {
                case 1:
                    this.a.e((l17) message.obj, true);
                    break;
                case 2:
                    l17 l17Var = (l17) message.obj;
                    t17 t17Var = this.a;
                    Objects.requireNonNull(t17Var);
                    String str = l17Var.i;
                    n17 n17Var = t17Var.e.get(str);
                    if (n17Var != null) {
                        n17Var.d(l17Var);
                        if (n17Var.b()) {
                            t17Var.e.remove(str);
                            if (l17Var.a.n) {
                                p27.e("Dispatcher", "canceled", l17Var.b.b(), "");
                            }
                        }
                    }
                    if (t17Var.h.contains(l17Var.j)) {
                        t17Var.g.remove(l17Var.d());
                        if (l17Var.a.n) {
                            p27.e("Dispatcher", "canceled", l17Var.b.b(), "because paused request got canceled");
                        }
                    }
                    l17 l17VarRemove = t17Var.f.remove(l17Var.d());
                    if (l17VarRemove != null && l17VarRemove.a.n) {
                        p27.e("Dispatcher", "canceled", l17VarRemove.b.b(), "from replaying");
                        break;
                    }
                    break;
                case 3:
                case 8:
                default:
                    e27.o.post(new RunnableC0039a(this, message));
                    break;
                case 4:
                    n17 n17Var2 = (n17) message.obj;
                    t17 t17Var2 = this.a;
                    Objects.requireNonNull(t17Var2);
                    if ((n17Var2.l & 2) == 0) {
                        t17Var2.k.c(n17Var2.j, n17Var2.q);
                    }
                    t17Var2.e.remove(n17Var2.j);
                    t17Var2.a(n17Var2);
                    if (n17Var2.f.n) {
                        p27.e("Dispatcher", "batched", p27.c(n17Var2), "for completion");
                        break;
                    }
                    break;
                case 5:
                    n17 n17Var3 = (n17) message.obj;
                    t17 t17Var3 = this.a;
                    Objects.requireNonNull(t17Var3);
                    Future<?> future = n17Var3.r;
                    if (!(future != null && future.isCancelled())) {
                        if (t17Var3.c.isShutdown()) {
                            t17Var3.d(n17Var3, false);
                            break;
                        } else {
                            if (t17Var3.o) {
                                Context context = t17Var3.b;
                                StringBuilder sb = p27.a;
                                activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                            }
                            boolean z = t17Var3.p;
                            int i = n17Var3.v;
                            if (i > 0) {
                                n17Var3.v = i - 1;
                                zG = n17Var3.n.g(z, activeNetworkInfo);
                            } else {
                                zG = false;
                            }
                            if (zG) {
                                if (n17Var3.f.n) {
                                    p27.e("Dispatcher", "retrying", p27.c(n17Var3), "");
                                }
                                if (n17Var3.t instanceof c27.a) {
                                    n17Var3.m |= 1;
                                }
                                n17Var3.r = t17Var3.c.submit(n17Var3);
                                break;
                            } else {
                                boolean z2 = t17Var3.o && n17Var3.n.h();
                                t17Var3.d(n17Var3, z2);
                                if (z2) {
                                    l17 l17Var2 = n17Var3.o;
                                    if (l17Var2 != null && (objD = l17Var2.d()) != null) {
                                        l17Var2.k = true;
                                        t17Var3.f.put(objD, l17Var2);
                                    }
                                    List<l17> list = n17Var3.p;
                                    if (list != null) {
                                        int size = list.size();
                                        for (int i2 = 0; i2 < size; i2++) {
                                            l17 l17Var3 = list.get(i2);
                                            Object objD2 = l17Var3.d();
                                            if (objD2 != null) {
                                                l17Var3.k = true;
                                                t17Var3.f.put(objD2, l17Var3);
                                            }
                                        }
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 6:
                    this.a.d((n17) message.obj, false);
                    break;
                case 7:
                    t17 t17Var4 = this.a;
                    Objects.requireNonNull(t17Var4);
                    ArrayList arrayList2 = new ArrayList(t17Var4.m);
                    t17Var4.m.clear();
                    Handler handler = t17Var4.j;
                    handler.sendMessage(handler.obtainMessage(8, arrayList2));
                    if (!arrayList2.isEmpty() && ((n17) arrayList2.get(0)).f.n) {
                        StringBuilder sb2 = new StringBuilder();
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            n17 n17Var4 = (n17) it.next();
                            if (sb2.length() > 0) {
                                sb2.append(", ");
                            }
                            sb2.append(p27.c(n17Var4));
                        }
                        p27.e("Dispatcher", "delivered", sb2.toString(), "");
                        break;
                    }
                    break;
                case 9:
                    NetworkInfo networkInfo = (NetworkInfo) message.obj;
                    t17 t17Var5 = this.a;
                    ExecutorService executorService = t17Var5.c;
                    if (executorService instanceof g27) {
                        g27 g27Var = (g27) executorService;
                        Objects.requireNonNull(g27Var);
                        if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                            int type = networkInfo.getType();
                            if (type == 0) {
                                int subtype = networkInfo.getSubtype();
                                switch (subtype) {
                                    case 1:
                                    case 2:
                                        g27Var.setCorePoolSize(1);
                                        g27Var.setMaximumPoolSize(1);
                                        break;
                                    default:
                                        switch (subtype) {
                                            case 12:
                                                break;
                                            case 13:
                                            case 14:
                                            case 15:
                                                g27Var.setCorePoolSize(3);
                                                g27Var.setMaximumPoolSize(3);
                                                break;
                                            default:
                                                g27Var.setCorePoolSize(3);
                                                g27Var.setMaximumPoolSize(3);
                                                break;
                                        }
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                        g27Var.setCorePoolSize(2);
                                        g27Var.setMaximumPoolSize(2);
                                        break;
                                }
                            } else if (type == 1 || type == 6 || type == 9) {
                                g27Var.setCorePoolSize(4);
                                g27Var.setMaximumPoolSize(4);
                            } else {
                                g27Var.setCorePoolSize(3);
                                g27Var.setMaximumPoolSize(3);
                            }
                        } else {
                            g27Var.setCorePoolSize(3);
                            g27Var.setMaximumPoolSize(3);
                        }
                    }
                    if (networkInfo != null && networkInfo.isConnected() && !t17Var5.f.isEmpty()) {
                        Iterator<l17> it2 = t17Var5.f.values().iterator();
                        while (it2.hasNext()) {
                            l17 next = it2.next();
                            it2.remove();
                            if (next.a.n) {
                                p27.e("Dispatcher", "replaying", next.b.b(), "");
                            }
                            t17Var5.e(next, false);
                        }
                        break;
                    }
                    break;
                case 10:
                    this.a.p = message.arg1 == 1;
                    break;
                case 11:
                    Object obj = message.obj;
                    t17 t17Var6 = this.a;
                    if (t17Var6.h.add(obj)) {
                        Iterator<n17> it3 = t17Var6.e.values().iterator();
                        while (it3.hasNext()) {
                            n17 next2 = it3.next();
                            boolean z3 = next2.f.n;
                            l17 l17Var4 = next2.o;
                            List<l17> list2 = next2.p;
                            boolean z4 = (list2 == null || list2.isEmpty()) ? false : true;
                            if (l17Var4 != null || z4) {
                                if (l17Var4 != null && l17Var4.j.equals(obj)) {
                                    next2.d(l17Var4);
                                    t17Var6.g.put(l17Var4.d(), l17Var4);
                                    if (z3) {
                                        p27.e("Dispatcher", "paused", l17Var4.b.b(), "because tag '" + obj + "' was paused");
                                    }
                                }
                                if (z4) {
                                    for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                                        l17 l17Var5 = list2.get(size2);
                                        if (l17Var5.j.equals(obj)) {
                                            next2.d(l17Var5);
                                            t17Var6.g.put(l17Var5.d(), l17Var5);
                                            if (z3) {
                                                p27.e("Dispatcher", "paused", l17Var5.b.b(), "because tag '" + obj + "' was paused");
                                            }
                                        }
                                    }
                                }
                                if (next2.b()) {
                                    it3.remove();
                                    if (z3) {
                                        p27.e("Dispatcher", "canceled", p27.c(next2), "all actions paused");
                                    }
                                }
                            }
                        }
                        break;
                    }
                    break;
                case 12:
                    Object obj2 = message.obj;
                    t17 t17Var7 = this.a;
                    if (t17Var7.h.remove(obj2)) {
                        Iterator<l17> it4 = t17Var7.g.values().iterator();
                        while (it4.hasNext()) {
                            l17 next3 = it4.next();
                            if (next3.j.equals(obj2)) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(next3);
                                it4.remove();
                            }
                        }
                        if (arrayList != null) {
                            Handler handler2 = t17Var7.j;
                            handler2.sendMessage(handler2.obtainMessage(13, arrayList));
                            break;
                        }
                    }
                    break;
            }
        }
    }

    public static class b extends HandlerThread {
        public b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    public static class c extends BroadcastReceiver {
        public final t17 a;

        public c(t17 t17Var) {
            this.a = t17Var;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.hasExtra("state")) {
                    t17 t17Var = this.a;
                    boolean booleanExtra = intent.getBooleanExtra("state", false);
                    Handler handler = t17Var.i;
                    handler.sendMessage(handler.obtainMessage(10, booleanExtra ? 1 : 0, 0));
                    return;
                }
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                StringBuilder sb = p27.a;
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                t17 t17Var2 = this.a;
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                Handler handler2 = t17Var2.i;
                handler2.sendMessage(handler2.obtainMessage(9, activeNetworkInfo));
            }
        }
    }

    public t17(Context context, ExecutorService executorService, Handler handler, u17 u17Var, o17 o17Var, l27 l27Var) {
        b bVar = new b();
        this.a = bVar;
        bVar.start();
        Looper looper = bVar.getLooper();
        StringBuilder sb = p27.a;
        o27 o27Var = new o27(looper);
        o27Var.sendMessageDelayed(o27Var.obtainMessage(), 1000L);
        this.b = context;
        this.c = executorService;
        this.e = new LinkedHashMap();
        this.f = new WeakHashMap();
        this.g = new WeakHashMap();
        this.h = new LinkedHashSet();
        this.i = new a(bVar.getLooper(), this);
        this.d = u17Var;
        this.j = handler;
        this.k = o17Var;
        this.l = l27Var;
        this.m = new ArrayList(4);
        boolean z = Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        this.p = z;
        this.o = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
        c cVar = new c(this);
        this.n = cVar;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        if (cVar.a.o) {
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        }
        cVar.a.b.registerReceiver(cVar, intentFilter);
    }

    public final void a(n17 n17Var) {
        Future<?> future = n17Var.r;
        if (future != null && future.isCancelled()) {
            return;
        }
        Bitmap bitmap = n17Var.q;
        if (bitmap != null) {
            bitmap.prepareToDraw();
        }
        this.m.add(n17Var);
        if (this.i.hasMessages(7)) {
            return;
        }
        this.i.sendEmptyMessageDelayed(7, 200L);
    }

    public void b(n17 n17Var) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(4, n17Var));
    }

    public void c(n17 n17Var) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(6, n17Var));
    }

    public void d(n17 n17Var, boolean z) {
        if (n17Var.f.n) {
            String strC = p27.c(n17Var);
            StringBuilder sbZ = jo.z("for error");
            sbZ.append(z ? " (will replay)" : "");
            p27.e("Dispatcher", "batched", strC, sbZ.toString());
        }
        this.e.remove(n17Var.j);
        a(n17Var);
    }

    public void e(l17 l17Var, boolean z) {
        n17 n17Var;
        if (this.h.contains(l17Var.j)) {
            this.g.put(l17Var.d(), l17Var);
            if (l17Var.a.n) {
                String strB = l17Var.b.b();
                StringBuilder sbZ = jo.z("because tag '");
                sbZ.append(l17Var.j);
                sbZ.append("' is paused");
                p27.e("Dispatcher", "paused", strB, sbZ.toString());
                return;
            }
            return;
        }
        n17 n17Var2 = this.e.get(l17Var.i);
        if (n17Var2 != null) {
            boolean z2 = n17Var2.f.n;
            h27 h27Var = l17Var.b;
            if (n17Var2.o == null) {
                n17Var2.o = l17Var;
                if (z2) {
                    List<l17> list = n17Var2.p;
                    if (list == null || list.isEmpty()) {
                        p27.e("Hunter", "joined", h27Var.b(), "to empty hunter");
                        return;
                    } else {
                        p27.e("Hunter", "joined", h27Var.b(), p27.d(n17Var2, "to "));
                        return;
                    }
                }
                return;
            }
            if (n17Var2.p == null) {
                n17Var2.p = new ArrayList(3);
            }
            n17Var2.p.add(l17Var);
            if (z2) {
                p27.e("Hunter", "joined", h27Var.b(), p27.d(n17Var2, "to "));
            }
            e27.e eVar = l17Var.b.r;
            if (eVar.ordinal() > n17Var2.w.ordinal()) {
                n17Var2.w = eVar;
                return;
            }
            return;
        }
        if (this.c.isShutdown()) {
            if (l17Var.a.n) {
                p27.e("Dispatcher", "ignored", l17Var.b.b(), "because shut down");
                return;
            }
            return;
        }
        e27 e27Var = l17Var.a;
        o17 o17Var = this.k;
        l27 l27Var = this.l;
        Object obj = n17.x;
        h27 h27Var2 = l17Var.b;
        List<j27> list2 = e27Var.d;
        int i = 0;
        int size = list2.size();
        while (true) {
            if (i >= size) {
                n17Var = new n17(e27Var, this, o17Var, l27Var, l17Var, n17.A);
                break;
            }
            j27 j27Var = list2.get(i);
            if (j27Var.c(h27Var2)) {
                n17Var = new n17(e27Var, this, o17Var, l27Var, l17Var, j27Var);
                break;
            }
            i++;
        }
        n17Var.r = this.c.submit(n17Var);
        this.e.put(l17Var.i, n17Var);
        if (z) {
            this.f.remove(l17Var.d());
        }
        if (l17Var.a.n) {
            p27.e("Dispatcher", "enqueued", l17Var.b.b(), "");
        }
    }
}
