package defpackage;

import android.view.Choreographer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class kb {
    public static final ThreadLocal<kb> g = new ThreadLocal<>();
    public c d;
    public final m4<b, Long> a = new m4<>();
    public final ArrayList<b> b = new ArrayList<>();
    public final a c = new a();
    public long e = 0;
    public boolean f = false;

    public class a {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0046 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() {
            /*
                r11 = this;
                kb r0 = defpackage.kb.this
                long r1 = android.os.SystemClock.uptimeMillis()
                r0.e = r1
                kb r0 = defpackage.kb.this
                long r1 = r0.e
                long r3 = android.os.SystemClock.uptimeMillis()
                r5 = 0
                r6 = 0
            L12:
                java.util.ArrayList<kb$b> r7 = r0.b
                int r7 = r7.size()
                if (r6 >= r7) goto L49
                java.util.ArrayList<kb$b> r7 = r0.b
                java.lang.Object r7 = r7.get(r6)
                kb$b r7 = (kb.b) r7
                if (r7 != 0) goto L25
                goto L46
            L25:
                m4<kb$b, java.lang.Long> r8 = r0.a
                r9 = 0
                java.lang.Object r8 = r8.getOrDefault(r7, r9)
                java.lang.Long r8 = (java.lang.Long) r8
                if (r8 != 0) goto L31
                goto L3e
            L31:
                long r8 = r8.longValue()
                int r10 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
                if (r10 >= 0) goto L40
                m4<kb$b, java.lang.Long> r8 = r0.a
                r8.remove(r7)
            L3e:
                r8 = 1
                goto L41
            L40:
                r8 = 0
            L41:
                if (r8 == 0) goto L46
                r7.a(r1)
            L46:
                int r6 = r6 + 1
                goto L12
            L49:
                boolean r1 = r0.f
                if (r1 == 0) goto L67
                java.util.ArrayList<kb$b> r1 = r0.b
                int r1 = r1.size()
            L53:
                int r1 = r1 + (-1)
                if (r1 < 0) goto L65
                java.util.ArrayList<kb$b> r2 = r0.b
                java.lang.Object r2 = r2.get(r1)
                if (r2 != 0) goto L53
                java.util.ArrayList<kb$b> r2 = r0.b
                r2.remove(r1)
                goto L53
            L65:
                r0.f = r5
            L67:
                kb r0 = defpackage.kb.this
                java.util.ArrayList<kb$b> r0 = r0.b
                int r0 = r0.size()
                if (r0 <= 0) goto L8b
                kb r0 = defpackage.kb.this
                kb$c r1 = r0.d
                if (r1 != 0) goto L80
                kb$d r1 = new kb$d
                kb$a r2 = r0.c
                r1.<init>(r2)
                r0.d = r1
            L80:
                kb$c r0 = r0.d
                kb$d r0 = (kb.d) r0
                android.view.Choreographer r1 = r0.b
                android.view.Choreographer$FrameCallback r0 = r0.c
                r1.postFrameCallback(r0)
            L8b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kb.a.a():void");
        }
    }

    public interface b {
        boolean a(long j);
    }

    public static abstract class c {
        public final a a;

        public c(a aVar) {
            this.a = aVar;
        }
    }

    public static class d extends c {
        public final Choreographer b;
        public final Choreographer.FrameCallback c;

        public class a implements Choreographer.FrameCallback {
            public a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                d.this.a.a();
            }
        }

        public d(a aVar) {
            super(aVar);
            this.b = Choreographer.getInstance();
            this.c = new a();
        }
    }

    public static kb a() {
        ThreadLocal<kb> threadLocal = g;
        if (threadLocal.get() == null) {
            threadLocal.set(new kb());
        }
        return threadLocal.get();
    }
}
