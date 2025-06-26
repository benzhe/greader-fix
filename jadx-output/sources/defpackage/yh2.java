package defpackage;

import android.os.Binder;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzdrc;
import defpackage.f61;
import defpackage.l91;
import defpackage.vv2;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class yh2<R extends l91<AdT>, AdT extends f61> implements li2<R, bi2<AdT>> {
    public final sm2 a;
    public final Executor b;
    public rv2<Void> c = new zh2();

    public yh2(sm2 sm2Var, Executor executor) {
        this.a = sm2Var;
        this.b = executor;
    }

    @Override // defpackage.li2
    public final aw2<bi2<AdT>> a(final pi2 pi2Var, final ni2<R> ni2Var) {
        aw2 aw2VarJ;
        aw2 aw2VarL;
        fi2 fi2Var = new fi2(this.a, pi2Var.b, ni2Var, this.b);
        ji2 ji2Var = fi2Var.e;
        if (ji2Var != null) {
            aw2VarL = vt2.j(ji2Var);
        } else {
            if (v60.a.a().booleanValue()) {
                final h71 h71VarD = ((l91) fi2Var.c.a(fi2Var.b).b(new vh2(((rm2) fi2Var.a).b.n)).a()).d();
                final zzdrc zzdrcVar = ((rm2) fi2Var.a).b;
                qo2<I> qo2VarB = h71VarD.c.b(ap2.GET_CACHE_KEY, h71VarD.i.b());
                lo2 lo2VarE = qo2VarB.c(new cv2(h71VarD, zzdrcVar) { // from class: i71
                    public final h71 a;
                    public final zzdrc b;

                    {
                        this.a = h71VarD;
                        this.b = zzdrcVar;
                    }

                    @Override // defpackage.cv2
                    public final aw2 a(Object obj) {
                        h71 h71Var = this.a;
                        zzdrc zzdrcVar2 = this.b;
                        zzauj zzaujVar = (zzauj) obj;
                        Objects.requireNonNull(h71Var);
                        zzaujVar.m = zzdrcVar2;
                        bw1 bw1Var = h71Var.h;
                        cv2 cv2Var = new cv2(zzaujVar) { // from class: cw1
                            public final zzauj a;

                            {
                                this.a = zzaujVar;
                            }

                            @Override // defpackage.cv2
                            public final aw2 a(Object obj2) throws IOException {
                                byte[] bArrA;
                                zzauj zzaujVar2 = this.a;
                                InputStream inputStream = (InputStream) obj2;
                                int i = ju2.a;
                                Objects.requireNonNull(inputStream);
                                ArrayDeque arrayDeque = new ArrayDeque(20);
                                int i2 = RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
                                int i3 = 0;
                                loop0: while (true) {
                                    if (i3 < 2147483639) {
                                        int iMin = Math.min(i2, 2147483639 - i3);
                                        byte[] bArr = new byte[iMin];
                                        arrayDeque.add(bArr);
                                        int i4 = 0;
                                        while (i4 < iMin) {
                                            int i5 = inputStream.read(bArr, i4, iMin - i4);
                                            if (i5 == -1) {
                                                bArrA = ju2.a(arrayDeque, i3);
                                                break loop0;
                                            }
                                            i4 += i5;
                                            i3 += i5;
                                        }
                                        long j = i2 << 1;
                                        i2 = j > 2147483647L ? Integer.MAX_VALUE : j < -2147483648L ? Integer.MIN_VALUE : (int) j;
                                    } else {
                                        if (inputStream.read() != -1) {
                                            throw new OutOfMemoryError("input is too large to fit in a byte array");
                                        }
                                        bArrA = ju2.a(arrayDeque, 2147483639);
                                    }
                                }
                                zzaujVar2.n = new String(bArrA, ts2.a);
                                return vt2.j(zzaujVar2);
                            }
                        };
                        pv1 pv1Var = bw1Var.b;
                        pv1Var.getClass();
                        return bw1Var.a(zzaujVar, new iw1(pv1Var) { // from class: fw1
                            public final pv1 a;

                            {
                                this.a = pv1Var;
                            }

                            @Override // defpackage.iw1
                            public final aw2 a(zzauj zzaujVar2) {
                                aw2 aVar;
                                final pv1 pv1Var2 = this.a;
                                synchronized (pv1Var2.b) {
                                    int i = pv1Var2.h;
                                    if (i != 1 && i != 2) {
                                        aVar = new vv2.a(new yv1(dm2.INVALID_REQUEST));
                                    } else if (pv1Var2.c) {
                                        aVar = pv1Var2.a;
                                    } else {
                                        pv1Var2.h = 2;
                                        pv1Var2.c = true;
                                        pv1Var2.e = zzaujVar2;
                                        pv1Var2.f.checkAvailabilityAndConnect();
                                        xs0<InputStream> xs0Var = pv1Var2.a;
                                        xs0Var.e.i(new Runnable(pv1Var2) { // from class: sv1
                                            public final pv1 e;

                                            {
                                                this.e = pv1Var2;
                                            }

                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.e.a();
                                            }
                                        }, ms0.f);
                                        aVar = pv1Var2.a;
                                    }
                                }
                                return aVar;
                            }
                        }, new iw1(bw1Var) { // from class: ew1
                            public final bw1 a;

                            {
                                this.a = bw1Var;
                            }

                            @Override // defpackage.iw1
                            public final aw2 a(zzauj zzaujVar2) {
                                return this.a.c.get().a7(zzaujVar2, Binder.getCallingUid());
                            }
                        }, cv2Var);
                    }
                }, qo2VarB.f.a).e();
                l71 l71Var = new l71(h71VarD);
                lo2VarE.i(new sv2(lo2VarE, l71Var), h71VarD.j);
                nv2 nv2VarY = nv2.A(lo2VarE).y(new ki2(fi2Var), fi2Var.d);
                hi2 hi2Var = new hi2(fi2Var);
                Executor executor = fi2Var.d;
                qu2 qu2Var = new qu2(nv2VarY, yv1.class, hi2Var);
                nv2VarY.i(qu2Var, vt2.g(executor, qu2Var));
                aw2VarJ = qu2Var;
            } else {
                ji2 ji2Var2 = new ji2(null, fi2Var.a(), null);
                fi2Var.e = ji2Var2;
                aw2VarJ = vt2.j(ji2Var2);
            }
            aw2VarL = vt2.l(aw2VarJ, ii2.a, fi2Var.d);
        }
        nv2 nv2VarZ = nv2.A(aw2VarL).z(new cv2(this, pi2Var, ni2Var) { // from class: xh2
            public final yh2 a;
            public final pi2 b;
            public final ni2 c;

            {
                this.a = this;
                this.b = pi2Var;
                this.c = ni2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                cn2<?> cn2VarB;
                Future futureA;
                yh2 yh2Var = this.a;
                pi2 pi2Var2 = this.b;
                ni2 ni2Var2 = this.c;
                ji2 ji2Var3 = (ji2) obj;
                Objects.requireNonNull(yh2Var);
                bn2 bn2Var = ji2Var3.b;
                zzauj zzaujVar = ji2Var3.a;
                if (bn2Var != null) {
                    rm2 rm2Var = (rm2) yh2Var.a;
                    synchronized (rm2Var) {
                        pm2 pm2Var = rm2Var.a.get(bn2Var);
                        if (pm2Var != null) {
                            cn2VarB = pm2Var.b();
                            if (cn2VarB == null) {
                                rm2Var.c.e++;
                            }
                            qn2 qn2Var = pm2Var.d;
                            pn2 pn2Var = (pn2) qn2Var.b.clone();
                            pn2 pn2Var2 = qn2Var.b;
                            pn2Var2.e = false;
                            pn2Var2.f = 0;
                            rm2Var.b(cn2VarB, pn2Var);
                        } else {
                            rm2Var.c.d++;
                            rm2Var.b(null, null);
                            cn2VarB = null;
                        }
                    }
                } else {
                    cn2VarB = null;
                }
                if (bn2Var == null) {
                    return vt2.j(null);
                }
                if (cn2VarB != null && zzaujVar != null) {
                    h71 h71VarD2 = ((l91) ni2Var2.a(pi2Var2.b).a()).d();
                    zo2 zo2Var = h71VarD2.c;
                    ap2 ap2Var = ap2.NOTIFY_CACHE_HIT;
                    bw1 bw1Var = h71VarD2.h;
                    Objects.requireNonNull(bw1Var);
                    if (bc3.b(zzaujVar.n)) {
                        futureA = new vv2.a(new bu1(dm2.INVALID_REQUEST, "Pool key missing from removeUrl call."));
                    } else {
                        futureA = bw1Var.a(zzaujVar, new iw1(bw1Var) { // from class: gw1
                            public final bw1 a;

                            {
                                this.a = bw1Var;
                            }

                            @Override // defpackage.iw1
                            public final aw2 a(zzauj zzaujVar2) {
                                aw2 aVar;
                                final pv1 pv1Var = this.a.b;
                                String str = zzaujVar2.n;
                                synchronized (pv1Var.b) {
                                    int i = pv1Var.h;
                                    if (i != 1 && i != 3) {
                                        aVar = new vv2.a(new yv1(dm2.INVALID_REQUEST));
                                    } else if (pv1Var.c) {
                                        aVar = pv1Var.a;
                                    } else {
                                        pv1Var.h = 3;
                                        pv1Var.c = true;
                                        pv1Var.g = str;
                                        pv1Var.f.checkAvailabilityAndConnect();
                                        xs0<InputStream> xs0Var = pv1Var.a;
                                        xs0Var.e.i(new Runnable(pv1Var) { // from class: rv1
                                            public final pv1 e;

                                            {
                                                this.e = pv1Var;
                                            }

                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.e.a();
                                            }
                                        }, ms0.f);
                                        aVar = pv1Var.a;
                                    }
                                }
                                return aVar;
                            }
                        }, new iw1(bw1Var) { // from class: jw1
                            public final bw1 a;

                            {
                                this.a = bw1Var;
                            }

                            @Override // defpackage.iw1
                            public final aw2 a(zzauj zzaujVar2) {
                                return this.a.c.get().c7(zzaujVar2.n);
                            }
                        }, hw1.a);
                    }
                    lo2 lo2VarE2 = zo2Var.b(ap2Var, futureA).e();
                    lo2VarE2.i(new sv2(lo2VarE2, new k71(h71VarD2)), h71VarD2.j);
                    vt2.i(lo2VarE2, yh2Var.c, yh2Var.b);
                }
                return vt2.j(new bi2(bn2Var, zzaujVar, cn2VarB));
            }
        }, this.b);
        ai2 ai2Var = new ai2();
        Executor executor2 = this.b;
        qu2 qu2Var2 = new qu2(nv2VarZ, Exception.class, ai2Var);
        nv2VarZ.i(qu2Var2, vt2.g(executor2, qu2Var2));
        return qu2Var2;
    }

    @Override // defpackage.li2
    public final /* bridge */ /* synthetic */ Object b() {
        return null;
    }
}
