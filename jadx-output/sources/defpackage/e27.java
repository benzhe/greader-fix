package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import defpackage.l17;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class e27 {
    public static final Handler o = new a(Looper.getMainLooper());
    public final c a;
    public final f b;
    public final b c;
    public final List<j27> d;
    public final Context e;
    public final t17 f;
    public final o17 g;
    public final l27 h;
    public final Map<Object, l17> i;
    public final Map<ImageView, s17> j;
    public final ReferenceQueue<Object> k;
    public final Bitmap.Config l = null;
    public boolean m;
    public volatile boolean n;

    public static class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                l17 l17Var = (l17) message.obj;
                if (l17Var.a.n) {
                    p27.e("Main", "canceled", l17Var.b.b(), "target got garbage collected");
                }
                l17Var.a.a(l17Var.d());
                return;
            }
            if (i != 8) {
                if (i != 13) {
                    StringBuilder sbZ = jo.z("Unknown handler message received: ");
                    sbZ.append(message.what);
                    throw new AssertionError(sbZ.toString());
                }
                List list = (List) message.obj;
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    l17 l17Var2 = (l17) list.get(i2);
                    e27 e27Var = l17Var2.a;
                    Objects.requireNonNull(e27Var);
                    Bitmap bitmapD = b27.i(l17Var2.e) ? e27Var.d(l17Var2.i) : null;
                    if (bitmapD != null) {
                        d dVar = d.MEMORY;
                        e27Var.b(bitmapD, dVar, l17Var2, null);
                        if (e27Var.n) {
                            p27.e("Main", "completed", l17Var2.b.b(), "from " + dVar);
                        }
                    } else {
                        e27Var.c(l17Var2);
                        if (e27Var.n) {
                            p27.e("Main", "resumed", l17Var2.b.b(), "");
                        }
                    }
                }
                return;
            }
            List list2 = (List) message.obj;
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                n17 n17Var = (n17) list2.get(i3);
                e27 e27Var2 = n17Var.f;
                Objects.requireNonNull(e27Var2);
                l17 l17Var3 = n17Var.o;
                List<l17> list3 = n17Var.p;
                boolean z = true;
                boolean z2 = (list3 == null || list3.isEmpty()) ? false : true;
                if (l17Var3 == null && !z2) {
                    z = false;
                }
                if (z) {
                    Uri uri = n17Var.k.c;
                    Exception exc = n17Var.t;
                    Bitmap bitmap = n17Var.q;
                    d dVar2 = n17Var.s;
                    if (l17Var3 != null) {
                        e27Var2.b(bitmap, dVar2, l17Var3, exc);
                    }
                    if (z2) {
                        int size3 = list3.size();
                        for (int i4 = 0; i4 < size3; i4++) {
                            e27Var2.b(bitmap, dVar2, list3.get(i4), exc);
                        }
                    }
                    c cVar = e27Var2.a;
                    if (cVar != null && exc != null) {
                    }
                }
            }
        }
    }

    public static class b extends Thread {
        public final ReferenceQueue<Object> e;
        public final Handler f;

        public class a implements Runnable {
            public final /* synthetic */ Exception e;

            public a(b bVar, Exception exc) {
                this.e = exc;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new RuntimeException(this.e);
            }
        }

        public b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.e = referenceQueue;
            this.f = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    l17.a aVar = (l17.a) this.e.remove(1000L);
                    Message messageObtainMessage = this.f.obtainMessage();
                    if (aVar != null) {
                        messageObtainMessage.what = 3;
                        messageObtainMessage.obj = aVar.a;
                        this.f.sendMessage(messageObtainMessage);
                    } else {
                        messageObtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e) {
                    this.f.post(new a(this, e));
                    return;
                }
            }
        }
    }

    public interface c {
    }

    public enum d {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);

        public final int e;

        d(int i2) {
            this.e = i2;
        }
    }

    public enum e {
        LOW,
        NORMAL,
        HIGH
    }

    public interface f {
        public static final f a = new a();

        public static class a implements f {
        }
    }

    public e27(Context context, t17 t17Var, o17 o17Var, c cVar, f fVar, List<j27> list, l27 l27Var, Bitmap.Config config, boolean z, boolean z2) {
        this.e = context;
        this.f = t17Var;
        this.g = o17Var;
        this.a = cVar;
        this.b = fVar;
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(new k27(context));
        arrayList.add(new q17(context));
        arrayList.add(new a27(context));
        arrayList.add(new r17(context));
        arrayList.add(new m17(context));
        arrayList.add(new v17(context));
        arrayList.add(new c27(t17Var.d, l27Var));
        this.d = Collections.unmodifiableList(arrayList);
        this.h = l27Var;
        this.i = new WeakHashMap();
        this.j = new WeakHashMap();
        this.m = z;
        this.n = z2;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.k = referenceQueue;
        b bVar = new b(referenceQueue, o);
        this.c = bVar;
        bVar.start();
    }

    public void a(Object obj) {
        p27.a();
        l17 l17VarRemove = this.i.remove(obj);
        if (l17VarRemove != null) {
            l17VarRemove.a();
            Handler handler = this.f.i;
            handler.sendMessage(handler.obtainMessage(2, l17VarRemove));
        }
        if (obj instanceof ImageView) {
            s17 s17VarRemove = this.j.remove((ImageView) obj);
            if (s17VarRemove != null) {
                s17VarRemove.a();
            }
        }
    }

    public final void b(Bitmap bitmap, d dVar, l17 l17Var, Exception exc) {
        if (l17Var.l) {
            return;
        }
        if (!l17Var.k) {
            this.i.remove(l17Var.d());
        }
        if (bitmap == null) {
            l17Var.c(exc);
            if (this.n) {
                p27.e("Main", "errored", l17Var.b.b(), exc.getMessage());
                return;
            }
            return;
        }
        if (dVar == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
        l17Var.b(bitmap, dVar);
        if (this.n) {
            p27.e("Main", "completed", l17Var.b.b(), "from " + dVar);
        }
    }

    public void c(l17 l17Var) {
        Object objD = l17Var.d();
        if (objD != null && this.i.get(objD) != l17Var) {
            a(objD);
            this.i.put(objD, l17Var);
        }
        Handler handler = this.f.i;
        handler.sendMessage(handler.obtainMessage(1, l17Var));
    }

    public Bitmap d(String str) {
        Bitmap bitmapA = this.g.a(str);
        if (bitmapA != null) {
            this.h.c.sendEmptyMessage(0);
        } else {
            this.h.c.sendEmptyMessage(1);
        }
        return bitmapA;
    }
}
