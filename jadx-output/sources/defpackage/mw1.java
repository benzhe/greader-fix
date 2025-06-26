package defpackage;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzdrc;
import defpackage.vv2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class mw1 extends hm0 {
    public final Context e;
    public final Executor f;
    public final zm0 g;
    public final an0 h;
    public final r11 i;
    public final HashMap<String, xw1> j;

    public mw1(Context context, Executor executor, zm0 zm0Var, r11 r11Var, an0 an0Var, HashMap<String, xw1> map) {
        y40.a(context);
        this.e = context;
        this.f = executor;
        this.g = zm0Var;
        this.h = an0Var;
        this.i = r11Var;
        this.j = map;
    }

    public static aw2<JSONObject> W6(zzauj zzaujVar, zo2 zo2Var, final vz0 vz0Var) {
        cv2 cv2Var = new cv2(vz0Var) { // from class: qw1
            public final vz0 a;

            {
                this.a = vz0Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws JSONException {
                vz0 vz0Var2 = this.a;
                Objects.requireNonNull(vz0Var2);
                zv2 zv2VarA = yn2.a();
                qt2<qd2> qt2VarS = qt2.s(new ec2(new df2(new jr0(), yn2.a(), rf2.a(vz0Var2.a)), 0L, vz0Var2.u.m.get()), new ec2(new nf2(new al0(), vz0Var2.u.m.get(), uy0.a(vz0Var2.u.b)), ((Long) os3.j.f.a(y40.i2)).longValue(), vz0Var2.u.m.get()), new ec2(new ee2(new ir0(), uy0.a(vz0Var2.u.b), vz0Var2.u.m.get(), yn2.a(), vz0Var2.a.b), 0L, vz0Var2.u.m.get()), new ec2(new xf2(yn2.a()), 0L, vz0Var2.u.m.get()), uf2.a, new oe2(null, uy0.a(vz0Var2.u.b), rf2.a(vz0Var2.a), yn2.a()), new ye2(new uo3(), yn2.a(), uy0.a(vz0Var2.u.b)), vz0Var2.a(), vz0Var2.b(), new se2(new ir0(), vz0Var2.a.b, uy0.a(vz0Var2.u.b), vz0Var2.u.R.get(), vz0Var2.u.m.get(), yn2.a()), (qd2) vz0Var2.u.o0.get());
                JSONObject jSONObjectZzc = zzr.zzkv().zzc((Bundle) obj);
                ArrayList arrayList = new ArrayList(qt2VarS.size());
                for (qd2 qd2Var : qt2VarS) {
                    aw2 aw2VarA = qd2Var.a();
                    if (q60.a.a().booleanValue()) {
                        aw2VarA.i(new sd2(qd2Var, zzr.zzlc().b()), ms0.f);
                    }
                    arrayList.add(aw2VarA);
                }
                return new gv2(nt2.y(arrayList), true, zv2VarA, new rd2(arrayList, jSONObjectZzc));
            }
        };
        jo2 jo2Var = pw1.a;
        qo2<I> qo2VarB = zo2Var.b(ap2.GMS_SIGNALS, vt2.j(zzaujVar.e));
        qo2 qo2VarC = qo2VarB.c(cv2Var, qo2VarB.f.a);
        return qo2VarC.c(new uo2(jo2Var), qo2VarC.f.a).e();
    }

    public static aw2<sm0> X6(aw2<JSONObject> aw2Var, zo2 zo2Var, hf0 hf0Var) {
        mf0 mf0Var = new mf0(hf0Var.a, "AFMA_getAdDictionary", gf0.b, sw1.a);
        qo2<I> qo2VarB = zo2Var.b(ap2.BUILD_URL, aw2Var);
        return qo2VarB.c(mf0Var, qo2VarB.f.a).e();
    }

    @Override // defpackage.em0
    public final void W3(zzauj zzaujVar, lm0 lm0Var) {
        Y6(a7(zzaujVar, Binder.getCallingUid()), lm0Var);
    }

    public final void Y6(aw2<InputStream> aw2Var, lm0 lm0Var) {
        aw2 aw2VarM = vt2.m(aw2Var, new cv2(this) { // from class: ww1
            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws IOException {
                ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                ms0.a.execute(new Runnable((InputStream) obj, parcelFileDescriptorArrCreatePipe[1]) { // from class: am2
                    public final InputStream e;
                    public final ParcelFileDescriptor f;

                    {
                        this.e = inputStream;
                        this.f = parcelFileDescriptor;
                    }

                    @Override // java.lang.Runnable
                    public final void run() throws IOException {
                        InputStream inputStream = this.e;
                        try {
                            try {
                                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f);
                                try {
                                    bi.n0(inputStream, autoCloseOutputStream, false);
                                    autoCloseOutputStream.close();
                                    inputStream.close();
                                } finally {
                                }
                            } finally {
                            }
                        } catch (IOException unused) {
                        }
                    }
                });
                return vt2.j(parcelFileDescriptor);
            }
        }, ms0.a);
        yw1 yw1Var = new yw1(lm0Var);
        zv2 zv2Var = ms0.f;
        ((su2) aw2VarM).i(new sv2(aw2VarM, yw1Var), zv2Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.aw2<java.io.InputStream> Z6(com.google.android.gms.internal.ads.zzauj r15, int r16) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mw1.Z6(com.google.android.gms.internal.ads.zzauj, int):aw2");
    }

    public final aw2<InputStream> a7(zzauj zzaujVar, int i) {
        if (!v60.a.a().booleanValue()) {
            return new vv2.a(new Exception("Split request is disabled."));
        }
        zzdrc zzdrcVar = zzaujVar.m;
        if (zzdrcVar == null) {
            return new vv2.a(new Exception("Pool configuration missing from request."));
        }
        if (zzdrcVar.k == 0 || zzdrcVar.l == 0) {
            return new vv2.a(new Exception("Caching is disabled."));
        }
        hf0 hf0VarA = zzr.zzli().a(this.e, zzbar.n());
        vz0 vz0VarA = this.i.a(zzaujVar, i);
        zo2 zo2VarC = vz0VarA.c();
        final aw2<JSONObject> aw2VarW6 = W6(zzaujVar, zo2VarC, vz0VarA);
        final aw2<sm0> aw2VarX6 = X6(aw2VarW6, zo2VarC, hf0VarA);
        return zo2VarC.a(ap2.GET_URL_AND_CACHE_KEY, aw2VarW6, aw2VarX6).a(new Callable(this, aw2VarX6, aw2VarW6) { // from class: uw1
            public final mw1 e;
            public final aw2 f;
            public final aw2 g;

            {
                this.e = this;
                this.f = aw2VarX6;
                this.g = aw2VarW6;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                mw1 mw1Var = this.e;
                aw2 aw2Var = this.f;
                aw2 aw2Var2 = this.g;
                Objects.requireNonNull(mw1Var);
                String str = ((sm0) aw2Var.get()).i;
                mw1Var.j.put(str, new xw1((sm0) aw2Var.get(), (JSONObject) aw2Var2.get()));
                return new ByteArrayInputStream(str.getBytes(ts2.a));
            }
        }).e();
    }

    public final aw2<InputStream> b7(zzauj zzaujVar, int i) {
        hf0 hf0VarA = zzr.zzli().a(this.e, zzbar.n());
        if (!b70.a.a().booleanValue()) {
            return new vv2.a(new Exception("Signal collection disabled."));
        }
        vz0 vz0VarA = this.i.a(zzaujVar, i);
        Object obj = vz0VarA.u.o0.get();
        je2 je2VarB = vz0VarA.b();
        hf2 hf2VarA = vz0VarA.a();
        xa3 xa3VarB = db3.b(vz0VarA.c);
        xa3 xa3VarB2 = db3.b(vz0VarA.e);
        xa3 xa3VarB3 = db3.b(vz0VarA.f);
        xa3 xa3VarB4 = db3.b(vz0VarA.g);
        db3.b(vz0VarA.h);
        xa3 xa3VarB5 = db3.b(vz0VarA.i);
        xa3 xa3VarB6 = db3.b(vz0VarA.j);
        zv2 zv2VarA = yn2.a();
        vz0VarA.u.m.get();
        HashSet hashSet = new HashSet();
        hashSet.add((ze2) obj);
        hashSet.add(je2VarB);
        hashSet.add(hf2VarA);
        if (((Boolean) os3.j.f.a(y40.q3)).booleanValue()) {
            hashSet.add((qd2) xa3VarB.get());
        }
        if (((Boolean) os3.j.f.a(y40.r3)).booleanValue()) {
            hashSet.add((qd2) xa3VarB2.get());
        }
        if (((Boolean) os3.j.f.a(y40.s3)).booleanValue()) {
            hashSet.add((qd2) xa3VarB3.get());
        }
        if (((Boolean) os3.j.f.a(y40.t3)).booleanValue()) {
            hashSet.add((qd2) xa3VarB4.get());
        }
        if (((Boolean) os3.j.f.a(y40.v3)).booleanValue()) {
            hashSet.add((qd2) xa3VarB5.get());
        }
        if (((Boolean) os3.j.f.a(y40.w3)).booleanValue()) {
            hashSet.add((qd2) xa3VarB6.get());
        }
        final pd2 pd2Var = new pd2(zv2VarA, hashSet);
        mf0 mf0Var = new mf0(hf0VarA.a, "google.afma.request.getSignals", gf0.b, gf0.c);
        qo2<I> qo2VarB = vz0VarA.c().b(ap2.GET_SIGNALS, vt2.j(zzaujVar.e));
        qo2 qo2VarC = qo2VarB.c(new cv2(pd2Var) { // from class: tw1
            public final pd2 a;

            {
                this.a = pd2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj2) {
                return this.a.a(zzr.zzkv().zzc((Bundle) obj2));
            }
        }, qo2VarB.f.a);
        qo2 qo2VarB2 = qo2VarC.f.b(ap2.JS_SIGNALS, qo2VarC.e());
        return qo2VarB2.c(mf0Var, qo2VarB2.f.a).e();
    }

    public final aw2<InputStream> c7(String str) {
        if (!v60.a.a().booleanValue()) {
            return new vv2.a(new Exception("Split request is disabled."));
        }
        vw1 vw1Var = new vw1();
        if (this.j.remove(str) != null) {
            return vt2.j(vw1Var);
        }
        String strValueOf = String.valueOf(str);
        return new vv2.a(new Exception(strValueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(strValueOf) : new String("URL to be removed not found for cache key: ")));
    }

    @Override // defpackage.em0
    public final void e3(zzauj zzaujVar, lm0 lm0Var) {
        Y6(b7(zzaujVar, Binder.getCallingUid()), lm0Var);
    }

    @Override // defpackage.em0
    public final void n5(String str, lm0 lm0Var) {
        Y6(c7(str), lm0Var);
    }

    @Override // defpackage.em0
    public final void y3(zzauj zzaujVar, lm0 lm0Var) {
        aw2<InputStream> aw2VarZ6 = Z6(zzaujVar, Binder.getCallingUid());
        Y6(aw2VarZ6, lm0Var);
        ((lo2) aw2VarZ6).g.i(new Runnable(this) { // from class: rw1
            public final mw1 e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                c50.e2(this.e.h.a(), "persistFlags");
            }
        }, this.f);
    }
}
