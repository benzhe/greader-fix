package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public final class h54 extends c94<h54, g54> implements ea4 {
    private static final h54 zzZ;
    public static final /* synthetic */ int zza = 0;
    private String zzA;
    private long zzB;
    private int zzC;
    private String zzD;
    private String zzE;
    private boolean zzF;
    private i94<u44> zzG;
    private String zzH;
    private int zzI;
    private int zzJ;
    private int zzK;
    private String zzL;
    private long zzM;
    private long zzN;
    private String zzO;
    private String zzP;
    private int zzQ;
    private String zzR;
    private l54 zzS;
    private g94 zzT;
    private long zzU;
    private long zzV;
    private String zzW;
    private String zzX;
    private int zzY;
    private int zze;
    private int zzf;
    private int zzg;
    private i94<z44> zzh;
    private i94<r54> zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private String zzo;
    private String zzp;
    private String zzq;
    private String zzr;
    private int zzs;
    private String zzt;
    private String zzu;
    private String zzv;
    private long zzw;
    private long zzx;
    private String zzy;
    private boolean zzz;

    static {
        h54 h54Var = new h54();
        zzZ = h54Var;
        c94.q(h54.class, h54Var);
    }

    public h54() {
        la4<Object> la4Var = la4.h;
        this.zzh = la4Var;
        this.zzi = la4Var;
        this.zzo = "";
        this.zzp = "";
        this.zzq = "";
        this.zzr = "";
        this.zzt = "";
        this.zzu = "";
        this.zzv = "";
        this.zzy = "";
        this.zzA = "";
        this.zzD = "";
        this.zzE = "";
        this.zzG = la4Var;
        this.zzH = "";
        this.zzL = "";
        this.zzO = "";
        this.zzP = "";
        this.zzR = "";
        this.zzT = d94.h;
        this.zzW = "";
        this.zzX = "";
    }

    public static g54 C0() {
        return zzZ.m();
    }

    public static /* synthetic */ void E0(h54 h54Var) {
        h54Var.zze |= 1;
        h54Var.zzg = 1;
    }

    public static /* synthetic */ void F0(h54 h54Var, int i, z44 z44Var) {
        h54Var.T0();
        h54Var.zzh.set(i, z44Var);
    }

    public static /* synthetic */ void G0(h54 h54Var, z44 z44Var) {
        h54Var.T0();
        h54Var.zzh.add(z44Var);
    }

    public static /* synthetic */ void H0(h54 h54Var, Iterable iterable) {
        h54Var.T0();
        t74.i(iterable, h54Var.zzh);
    }

    public static void I0(h54 h54Var) {
        h54Var.zzh = la4.h;
    }

    public static /* synthetic */ void J0(h54 h54Var, int i) {
        h54Var.T0();
        h54Var.zzh.remove(i);
    }

    public static /* synthetic */ void K0(h54 h54Var, int i, r54 r54Var) {
        r54Var.getClass();
        h54Var.U0();
        h54Var.zzi.set(i, r54Var);
    }

    public static /* synthetic */ void L0(h54 h54Var, r54 r54Var) {
        r54Var.getClass();
        h54Var.U0();
        h54Var.zzi.add(r54Var);
    }

    public static /* synthetic */ void M0(h54 h54Var, int i) {
        h54Var.U0();
        h54Var.zzi.remove(i);
    }

    public static /* synthetic */ void N0(h54 h54Var, long j) {
        h54Var.zze |= 2;
        h54Var.zzj = j;
    }

    public static /* synthetic */ void O0(h54 h54Var, long j) {
        h54Var.zze |= 4;
        h54Var.zzk = j;
    }

    public static /* synthetic */ void P0(h54 h54Var, long j) {
        h54Var.zze |= 8;
        h54Var.zzl = j;
    }

    public static /* synthetic */ void Q0(h54 h54Var, long j) {
        h54Var.zze |= 16;
        h54Var.zzm = j;
    }

    public static /* synthetic */ void R0(h54 h54Var) {
        h54Var.zze &= -17;
        h54Var.zzm = 0L;
    }

    public static /* synthetic */ void T(h54 h54Var, long j) {
        h54Var.zze |= 32;
        h54Var.zzn = j;
    }

    public static /* synthetic */ void U(h54 h54Var) {
        h54Var.zze &= -33;
        h54Var.zzn = 0L;
    }

    public static /* synthetic */ void V(h54 h54Var) {
        h54Var.zze |= 64;
        h54Var.zzo = "android";
    }

    public static /* synthetic */ void V0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        h54Var.zzH = str;
    }

    public static /* synthetic */ void W(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= 128;
        h54Var.zzp = str;
    }

    public static /* synthetic */ void W0(h54 h54Var, int i) {
        h54Var.zze |= 33554432;
        h54Var.zzI = i;
    }

    public static /* synthetic */ void X(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= RecyclerView.a0.FLAG_TMP_DETACHED;
        h54Var.zzq = str;
    }

    public static /* synthetic */ void X0(h54 h54Var) {
        h54Var.zze &= -268435457;
        h54Var.zzL = zzZ.zzL;
    }

    public static /* synthetic */ void Y(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= 512;
        h54Var.zzr = str;
    }

    public static /* synthetic */ void Y0(h54 h54Var, long j) {
        h54Var.zze |= 536870912;
        h54Var.zzM = j;
    }

    public static /* synthetic */ void Z(h54 h54Var, int i) {
        h54Var.zze |= 1024;
        h54Var.zzs = i;
    }

    public static /* synthetic */ void Z0(h54 h54Var, long j) {
        h54Var.zze |= 1073741824;
        h54Var.zzN = j;
    }

    public static /* synthetic */ void a0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= RecyclerView.a0.FLAG_MOVED;
        h54Var.zzt = str;
    }

    public static /* synthetic */ void a1(h54 h54Var) {
        h54Var.zze &= Integer.MAX_VALUE;
        h54Var.zzO = zzZ.zzO;
    }

    public static /* synthetic */ void b0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
        h54Var.zzu = str;
    }

    public static /* synthetic */ void b1(h54 h54Var, int i) {
        h54Var.zzf |= 2;
        h54Var.zzQ = i;
    }

    public static /* synthetic */ void c0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
        h54Var.zzv = str;
    }

    public static /* synthetic */ void c1(h54 h54Var, String str) {
        str.getClass();
        h54Var.zzf |= 4;
        h54Var.zzR = str;
    }

    public static /* synthetic */ void d0(h54 h54Var, long j) {
        h54Var.zze |= Http2.INITIAL_MAX_FRAME_SIZE;
        h54Var.zzw = j;
    }

    public static void d1(h54 h54Var, Iterable iterable) {
        RandomAccess randomAccess = h54Var.zzT;
        if (!((u74) randomAccess).e) {
            d94 d94Var = (d94) randomAccess;
            int i = d94Var.g;
            h54Var.zzT = d94Var.w(i == 0 ? 10 : i + i);
        }
        t74.i(iterable, h54Var.zzT);
    }

    public static /* synthetic */ void e0(h54 h54Var) {
        h54Var.zze |= 32768;
        h54Var.zzx = 37000L;
    }

    public static /* synthetic */ void e1(h54 h54Var, long j) {
        h54Var.zzf |= 16;
        h54Var.zzU = j;
    }

    public static /* synthetic */ void f0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= 65536;
        h54Var.zzy = str;
    }

    public static /* synthetic */ void f1(h54 h54Var, long j) {
        h54Var.zzf |= 32;
        h54Var.zzV = j;
    }

    public static /* synthetic */ void g0(h54 h54Var) {
        h54Var.zze &= -65537;
        h54Var.zzy = zzZ.zzy;
    }

    public static /* synthetic */ void g1(h54 h54Var, String str) {
        str.getClass();
        h54Var.zzf |= 64;
        h54Var.zzW = str;
    }

    public static /* synthetic */ void h0(h54 h54Var, boolean z) {
        h54Var.zze |= 131072;
        h54Var.zzz = z;
    }

    public static /* synthetic */ void h1(h54 h54Var, String str) {
        str.getClass();
        h54Var.zzf |= 128;
        h54Var.zzX = str;
    }

    public static /* synthetic */ void i0(h54 h54Var) {
        h54Var.zze &= -131073;
        h54Var.zzz = false;
    }

    public static /* synthetic */ void j0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= 262144;
        h54Var.zzA = str;
    }

    public static /* synthetic */ void k0(h54 h54Var) {
        h54Var.zze &= -262145;
        h54Var.zzA = zzZ.zzA;
    }

    public static /* synthetic */ void l0(h54 h54Var, long j) {
        h54Var.zze |= 524288;
        h54Var.zzB = j;
    }

    public static /* synthetic */ void m0(h54 h54Var, int i) {
        h54Var.zze |= 1048576;
        h54Var.zzC = i;
    }

    public static /* synthetic */ void n0(h54 h54Var, String str) {
        h54Var.zze |= 2097152;
        h54Var.zzD = str;
    }

    public static /* synthetic */ void o0(h54 h54Var) {
        h54Var.zze &= -2097153;
        h54Var.zzD = zzZ.zzD;
    }

    public static /* synthetic */ void p0(h54 h54Var, String str) {
        str.getClass();
        h54Var.zze |= 4194304;
        h54Var.zzE = str;
    }

    public static /* synthetic */ void q0(h54 h54Var, boolean z) {
        h54Var.zze |= 8388608;
        h54Var.zzF = z;
    }

    public static /* synthetic */ void r0(h54 h54Var, Iterable iterable) {
        i94<u44> i94Var = h54Var.zzG;
        if (!i94Var.a()) {
            h54Var.zzG = c94.l(i94Var);
        }
        t74.i(iterable, h54Var.zzG);
    }

    public static void s0(h54 h54Var) {
        h54Var.zzG = la4.h;
    }

    public final boolean A() {
        return this.zzz;
    }

    public final boolean A0() {
        return (this.zzf & 128) != 0;
    }

    public final String A1() {
        return this.zzq;
    }

    public final String B() {
        return this.zzA;
    }

    public final String B0() {
        return this.zzX;
    }

    public final String B1() {
        return this.zzr;
    }

    public final boolean C() {
        return (this.zze & 524288) != 0;
    }

    public final boolean C1() {
        return (this.zze & 1024) != 0;
    }

    public final long D() {
        return this.zzB;
    }

    public final int D1() {
        return this.zzs;
    }

    public final boolean E() {
        return (this.zze & 1048576) != 0;
    }

    public final String E1() {
        return this.zzt;
    }

    public final int F() {
        return this.zzC;
    }

    public final String G() {
        return this.zzD;
    }

    public final String H() {
        return this.zzE;
    }

    public final boolean I() {
        return (this.zze & 8388608) != 0;
    }

    public final boolean J() {
        return this.zzF;
    }

    public final List<u44> K() {
        return this.zzG;
    }

    public final String L() {
        return this.zzH;
    }

    public final boolean M() {
        return (this.zze & 33554432) != 0;
    }

    public final int N() {
        return this.zzI;
    }

    public final boolean O() {
        return (this.zze & 536870912) != 0;
    }

    public final long P() {
        return this.zzM;
    }

    public final boolean Q() {
        return (this.zze & 1073741824) != 0;
    }

    public final long R() {
        return this.zzN;
    }

    public final boolean S() {
        return (this.zze & 1) != 0;
    }

    public final int S0() {
        return this.zzg;
    }

    public final void T0() {
        i94<z44> i94Var = this.zzh;
        if (i94Var.a()) {
            return;
        }
        this.zzh = c94.l(i94Var);
    }

    public final void U0() {
        i94<r54> i94Var = this.zzi;
        if (i94Var.a()) {
            return;
        }
        this.zzi = c94.l(i94Var);
    }

    public final List<z44> i1() {
        return this.zzh;
    }

    public final int j1() {
        return this.zzh.size();
    }

    public final z44 k1(int i) {
        return this.zzh.get(i);
    }

    public final List<r54> l1() {
        return this.zzi;
    }

    public final int m1() {
        return this.zzi.size();
    }

    public final r54 n1(int i) {
        return this.zzi.get(i);
    }

    public final boolean o1() {
        return (this.zze & 2) != 0;
    }

    public final long p1() {
        return this.zzj;
    }

    public final boolean q1() {
        return (this.zze & 4) != 0;
    }

    @Override // defpackage.c94
    public final Object r(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new ma4(zzZ, "\u0001-\u0000\u0002\u00015-\u0000\u0004\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(", new Object[]{"zze", "zzf", "zzg", "zzh", z44.class, "zzi", r54.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzm", "zzF", "zzG", u44.class, "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", r44.a});
        }
        if (i2 == 3) {
            return new h54();
        }
        q44 q44Var = null;
        if (i2 == 4) {
            return new g54(q44Var);
        }
        if (i2 != 5) {
            return null;
        }
        return zzZ;
    }

    public final long r1() {
        return this.zzk;
    }

    public final String s() {
        return this.zzu;
    }

    public final boolean s1() {
        return (this.zze & 8) != 0;
    }

    public final String t() {
        return this.zzv;
    }

    public final String t0() {
        return this.zzO;
    }

    public final long t1() {
        return this.zzl;
    }

    public final boolean u() {
        return (this.zze & Http2.INITIAL_MAX_FRAME_SIZE) != 0;
    }

    public final boolean u0() {
        return (this.zzf & 2) != 0;
    }

    public final boolean u1() {
        return (this.zze & 16) != 0;
    }

    public final long v() {
        return this.zzw;
    }

    public final int v0() {
        return this.zzQ;
    }

    public final long v1() {
        return this.zzm;
    }

    public final boolean w() {
        return (this.zze & 32768) != 0;
    }

    public final String w0() {
        return this.zzR;
    }

    public final boolean w1() {
        return (this.zze & 32) != 0;
    }

    public final long x() {
        return this.zzx;
    }

    public final boolean x0() {
        return (this.zzf & 16) != 0;
    }

    public final long x1() {
        return this.zzn;
    }

    public final String y() {
        return this.zzy;
    }

    public final long y0() {
        return this.zzU;
    }

    public final String y1() {
        return this.zzo;
    }

    public final boolean z() {
        return (this.zze & 131072) != 0;
    }

    public final String z0() {
        return this.zzW;
    }

    public final String z1() {
        return this.zzp;
    }
}
