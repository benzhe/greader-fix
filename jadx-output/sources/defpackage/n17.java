package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import defpackage.c27;
import defpackage.e27;
import defpackage.j27;
import defpackage.pt7;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import pt7.a;

/* loaded from: classes2.dex */
public class n17 implements Runnable {
    public final int e = z.incrementAndGet();
    public final e27 f;
    public final t17 g;
    public final o17 h;
    public final l27 i;
    public final String j;
    public final h27 k;
    public final int l;
    public int m;
    public final j27 n;
    public l17 o;
    public List<l17> p;
    public Bitmap q;
    public Future<?> r;
    public e27.d s;
    public Exception t;
    public int u;
    public int v;
    public e27.e w;
    public static final Object x = new Object();
    public static final ThreadLocal<StringBuilder> y = new a();
    public static final AtomicInteger z = new AtomicInteger();
    public static final j27 A = new b();

    public static class a extends ThreadLocal<StringBuilder> {
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    public static class b extends j27 {
        @Override // defpackage.j27
        public boolean c(h27 h27Var) {
            return true;
        }

        @Override // defpackage.j27
        public j27.a f(h27 h27Var, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + h27Var);
        }
    }

    public static class c implements Runnable {
        public final /* synthetic */ n27 e;
        public final /* synthetic */ RuntimeException f;

        public c(n27 n27Var, RuntimeException runtimeException) {
            this.e = n27Var;
            this.f = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sbZ = jo.z("Transformation ");
            sbZ.append(this.e.key());
            sbZ.append(" crashed with exception.");
            throw new RuntimeException(sbZ.toString(), this.f);
        }
    }

    public static class d implements Runnable {
        public final /* synthetic */ StringBuilder e;

        public d(StringBuilder sb) {
            this.e = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.e.toString());
        }
    }

    public static class e implements Runnable {
        public final /* synthetic */ n27 e;

        public e(n27 n27Var) {
            this.e = n27Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sbZ = jo.z("Transformation ");
            sbZ.append(this.e.key());
            sbZ.append(" returned input Bitmap but recycled it.");
            throw new IllegalStateException(sbZ.toString());
        }
    }

    public static class f implements Runnable {
        public final /* synthetic */ n27 e;

        public f(n27 n27Var) {
            this.e = n27Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sbZ = jo.z("Transformation ");
            sbZ.append(this.e.key());
            sbZ.append(" mutated input Bitmap but failed to recycle the original.");
            throw new IllegalStateException(sbZ.toString());
        }
    }

    public n17(e27 e27Var, t17 t17Var, o17 o17Var, l27 l27Var, l17 l17Var, j27 j27Var) {
        this.f = e27Var;
        this.g = t17Var;
        this.h = o17Var;
        this.i = l27Var;
        this.o = l17Var;
        this.j = l17Var.i;
        h27 h27Var = l17Var.b;
        this.k = h27Var;
        this.w = h27Var.r;
        this.l = l17Var.e;
        this.m = l17Var.f;
        this.n = j27Var;
        this.v = j27Var.e();
    }

    public static Bitmap a(List<n27> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            n27 n27Var = list.get(i);
            try {
                Bitmap bitmapA = n27Var.a(bitmap);
                if (bitmapA == null) {
                    StringBuilder sbZ = jo.z("Transformation ");
                    sbZ.append(n27Var.key());
                    sbZ.append(" returned null after ");
                    sbZ.append(i);
                    sbZ.append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<n27> it = list.iterator();
                    while (it.hasNext()) {
                        sbZ.append(it.next().key());
                        sbZ.append('\n');
                    }
                    e27.o.post(new d(sbZ));
                    return null;
                }
                if (bitmapA == bitmap && bitmap.isRecycled()) {
                    e27.o.post(new e(n27Var));
                    return null;
                }
                if (bitmapA != bitmap && !bitmap.isRecycled()) {
                    e27.o.post(new f(n27Var));
                    return null;
                }
                i++;
                bitmap = bitmapA;
            } catch (RuntimeException e2) {
                e27.o.post(new c(n27Var, e2));
                return null;
            }
        }
        return bitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Bitmap c(vt7 vt7Var, h27 h27Var) throws IOException {
        pt7 pt7Var = (pt7) n56.p(vt7Var);
        boolean z2 = pt7Var.U(0L, p27.b) && pt7Var.U(8L, p27.c);
        boolean z3 = h27Var.p;
        BitmapFactory.Options optionsD = j27.d(h27Var);
        boolean z4 = optionsD != null && optionsD.inJustDecodeBounds;
        if (z2) {
            pt7Var.e.b0(pt7Var.g);
            byte[] bArrG = pt7Var.e.G();
            if (z4) {
                BitmapFactory.decodeByteArray(bArrG, 0, bArrG.length, optionsD);
                j27.b(h27Var.f, h27Var.g, optionsD, h27Var);
            }
            return BitmapFactory.decodeByteArray(bArrG, 0, bArrG.length, optionsD);
        }
        pt7.a aVar = pt7Var.new a();
        if (z4) {
            z17 z17Var = new z17(aVar);
            z17Var.j = false;
            long j = z17Var.f + 1024;
            if (z17Var.h < j) {
                z17Var.b(j);
            }
            long j2 = z17Var.f;
            BitmapFactory.decodeStream(z17Var, null, optionsD);
            j27.b(h27Var.f, h27Var.g, optionsD, h27Var);
            z17Var.a(j2);
            z17Var.j = true;
            aVar = z17Var;
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(aVar, null, optionsD);
        if (bitmapDecodeStream != null) {
            return bitmapDecodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    public static boolean f(boolean z2, int i, int i2, int i3, int i4) {
        return !z2 || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x020f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap g(defpackage.h27 r27, android.graphics.Bitmap r28, int r29) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n17.g(h27, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    public static void h(h27 h27Var) {
        Uri uri = h27Var.c;
        String strValueOf = uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(h27Var.d);
        StringBuilder sb = y.get();
        sb.ensureCapacity(strValueOf.length() + 8);
        sb.replace(8, sb.length(), strValueOf);
        Thread.currentThread().setName(sb.toString());
    }

    public boolean b() {
        Future<?> future;
        if (this.o != null) {
            return false;
        }
        List<l17> list = this.p;
        return (list == null || list.isEmpty()) && (future = this.r) != null && future.cancel(false);
    }

    public void d(l17 l17Var) {
        boolean zRemove;
        boolean z2 = true;
        if (this.o == l17Var) {
            this.o = null;
            zRemove = true;
        } else {
            List<l17> list = this.p;
            zRemove = list != null ? list.remove(l17Var) : false;
        }
        if (zRemove && l17Var.b.r == this.w) {
            e27.e eVar = e27.e.LOW;
            List<l17> list2 = this.p;
            boolean z3 = (list2 == null || list2.isEmpty()) ? false : true;
            l17 l17Var2 = this.o;
            if (l17Var2 == null && !z3) {
                z2 = false;
            }
            if (z2) {
                if (l17Var2 != null) {
                    eVar = l17Var2.b.r;
                }
                if (z3) {
                    int size = this.p.size();
                    for (int i = 0; i < size; i++) {
                        e27.e eVar2 = this.p.get(i).b.r;
                        if (eVar2.ordinal() > eVar.ordinal()) {
                            eVar = eVar2;
                        }
                    }
                }
            }
            this.w = eVar;
        }
        if (this.f.n) {
            p27.e("Hunter", "removed", l17Var.b.b(), p27.d(this, "from "));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap e() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n17.e():android.graphics.Bitmap");
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        try {
                            h(this.k);
                            if (this.f.n) {
                                p27.e("Hunter", "executing", p27.c(this), "");
                            }
                            Bitmap bitmapE = e();
                            this.q = bitmapE;
                            if (bitmapE == null) {
                                this.g.c(this);
                            } else {
                                this.g.b(this);
                            }
                        } catch (c27.b e2) {
                            if (!((e2.f & 4) != 0) || e2.e != 504) {
                                this.t = e2;
                            }
                            Handler handler = this.g.i;
                            handler.sendMessage(handler.obtainMessage(6, this));
                        }
                    } catch (IOException e3) {
                        this.t = e3;
                        Handler handler2 = this.g.i;
                        handler2.sendMessageDelayed(handler2.obtainMessage(5, this), 500L);
                    }
                } catch (Exception e4) {
                    this.t = e4;
                    Handler handler3 = this.g.i;
                    handler3.sendMessage(handler3.obtainMessage(6, this));
                }
            } catch (OutOfMemoryError e5) {
                StringWriter stringWriter = new StringWriter();
                this.i.a().a(new PrintWriter(stringWriter));
                this.t = new RuntimeException(stringWriter.toString(), e5);
                Handler handler4 = this.g.i;
                handler4.sendMessage(handler4.obtainMessage(6, this));
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }
}
