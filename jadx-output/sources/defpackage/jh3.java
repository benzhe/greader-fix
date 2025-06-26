package defpackage;

import android.util.SparseArray;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;

/* loaded from: classes.dex */
public final class jh3 implements ig3 {
    public static final int y = el3.f("seig");
    public static final byte[] z = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public int j;
    public int k;
    public long l;
    public int m;
    public al3 n;
    public long o;
    public int p;
    public mh3 s;
    public int t;
    public int u;
    public int v;
    public kg3 w;
    public boolean x;
    public final al3 f = new al3(16);
    public final al3 b = new al3(zk3.a);
    public final al3 c = new al3(5);
    public final al3 d = new al3();
    public final al3 e = new al3(1);
    public final byte[] g = new byte[16];
    public final Stack<zg3> h = new Stack<>();
    public final LinkedList<kh3> i = new LinkedList<>();
    public final SparseArray<mh3> a = new SparseArray<>();
    public long q = -9223372036854775807L;
    public long r = -9223372036854775807L;

    public jh3() {
        h();
    }

    public static void b(al3 al3Var, int i, th3 th3Var) throws ne3 {
        al3Var.h(i + 8);
        int iB = al3Var.b();
        int i2 = ah3.b;
        int i3 = iB & 16777215;
        if ((i3 & 1) != 0) {
            throw new ne3("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z2 = (i3 & 2) != 0;
        int iO = al3Var.o();
        if (iO != th3Var.e) {
            throw new ne3(jo.N(41, "Length mismatch: ", iO, ", ", th3Var.e));
        }
        Arrays.fill(th3Var.m, 0, iO, z2);
        th3Var.a(al3Var.m());
        al3Var.l(th3Var.p.a, 0, th3Var.o);
        th3Var.p.h(0);
        th3Var.q = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzjo d(java.util.List<defpackage.ch3> r14) {
        /*
            int r0 = r14.size()
            r1 = 0
            r2 = 0
            r4 = r2
            r3 = 0
        L8:
            if (r3 >= r0) goto Lbe
            java.lang.Object r5 = r14.get(r3)
            ch3 r5 = (defpackage.ch3) r5
            int r6 = r5.a
            int r7 = defpackage.ah3.V
            if (r6 != r7) goto Lba
            if (r4 != 0) goto L1d
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
        L1d:
            al3 r5 = r5.P0
            byte[] r5 = r5.a
            al3 r6 = new al3
            r6.<init>(r5)
            int r8 = r6.c
            r9 = 32
            if (r8 >= r9) goto L2d
            goto L8a
        L2d:
            r6.h(r1)
            int r8 = r6.b()
            int r9 = r6.m()
            int r9 = r9 + 4
            if (r8 == r9) goto L3d
            goto L8a
        L3d:
            int r8 = r6.b()
            if (r8 == r7) goto L44
            goto L8a
        L44:
            int r7 = r6.b()
            int r7 = r7 >> 24
            r7 = r7 & 255(0xff, float:3.57E-43)
            r8 = 1
            if (r7 <= r8) goto L68
            r6 = 37
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>(r6)
            java.lang.String r6 = "Unsupported pssh version: "
            r8.append(r6)
            r8.append(r7)
            java.lang.String r6 = r8.toString()
            java.lang.String r7 = "PsshAtomUtil"
            android.util.Log.w(r7, r6)
            goto L8a
        L68:
            java.util.UUID r9 = new java.util.UUID
            long r10 = r6.c()
            long r12 = r6.c()
            r9.<init>(r10, r12)
            if (r7 != r8) goto L80
            int r7 = r6.o()
            int r7 = r7 << 4
            r6.i(r7)
        L80:
            int r7 = r6.o()
            int r8 = r6.m()
            if (r7 == r8) goto L8c
        L8a:
            r6 = r2
            goto L9e
        L8c:
            byte[] r8 = new byte[r7]
            byte[] r10 = r6.a
            int r11 = r6.b
            java.lang.System.arraycopy(r10, r11, r8, r1, r7)
            int r10 = r6.b
            int r10 = r10 + r7
            r6.b = r10
            android.util.Pair r6 = android.util.Pair.create(r9, r8)
        L9e:
            if (r6 != 0) goto La2
            r6 = r2
            goto La6
        La2:
            java.lang.Object r6 = r6.first
            java.util.UUID r6 = (java.util.UUID) r6
        La6:
            if (r6 != 0) goto Lb0
            java.lang.String r5 = "FragmentedMp4Extractor"
            java.lang.String r6 = "Skipped pssh atom (failed to extract uuid)"
            android.util.Log.w(r5, r6)
            goto Lba
        Lb0:
            com.google.android.gms.internal.ads.zzjo$zza r7 = new com.google.android.gms.internal.ads.zzjo$zza
            java.lang.String r8 = "video/mp4"
            r7.<init>(r6, r8, r5)
            r4.add(r7)
        Lba:
            int r3 = r3 + 1
            goto L8
        Lbe:
            if (r4 != 0) goto Lc1
            return r2
        Lc1:
            com.google.android.gms.internal.ads.zzjo r14 = new com.google.android.gms.internal.ads.zzjo
            int r0 = r4.size()
            com.google.android.gms.internal.ads.zzjo$zza[] r0 = new com.google.android.gms.internal.ads.zzjo.zza[r0]
            java.lang.Object[] r0 = r4.toArray(r0)
            com.google.android.gms.internal.ads.zzjo$zza[] r0 = (com.google.android.gms.internal.ads.zzjo.zza[]) r0
            r14.<init>(r1, r0)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jh3.d(java.util.List):com.google.android.gms.internal.ads.zzjo");
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x01e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x04f8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0004 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015f A[LOOP:6: B:58:0x015f->B:60:0x0165, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c2  */
    @Override // defpackage.ig3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(defpackage.gg3 r25, defpackage.ng3 r26) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jh3.a(gg3, ng3):int");
    }

    @Override // defpackage.ig3
    public final void c(kg3 kg3Var) {
        this.w = kg3Var;
    }

    @Override // defpackage.ig3
    public final boolean e(gg3 gg3Var) throws InterruptedException, IOException {
        return oh3.a(gg3Var, true);
    }

    @Override // defpackage.ig3
    public final void f(long j, long j2) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            this.a.valueAt(i).a();
        }
        this.i.clear();
        this.p = 0;
        this.h.clear();
        h();
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x05f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(long r50) throws defpackage.ne3 {
        /*
            Method dump skipped, instructions count: 1743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jh3.g(long):void");
    }

    public final void h() {
        this.j = 0;
        this.m = 0;
    }

    @Override // defpackage.ig3
    public final void release() {
    }
}
