package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class za2 implements qd2<wa2> {
    public final zv2 a;

    public za2(Context context, zv2 zv2Var) {
        this.a = zv2Var;
    }

    @Override // defpackage.qd2
    public final aw2<wa2> a() {
        return this.a.y(new Callable(this) { // from class: ya2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                tm3 tm3Var;
                String strZzzc;
                String strZzze;
                String str;
                zzr.zzkv();
                zm3 zm3VarZzza = zzr.zzkz().f().zzza();
                Bundle bundle = null;
                if (zm3VarZzza != null && (!zzr.zzkz().f().zzzb() || !zzr.zzkz().f().zzzd())) {
                    int i = 0;
                    if (zm3VarZzza.f) {
                        synchronized (zm3VarZzza.g) {
                            zm3VarZzza.f = false;
                            zm3VarZzza.g.notifyAll();
                            is0.zzdz("ContentFetchThread: wakeup");
                        }
                    }
                    wm3 wm3Var = zm3VarZzza.h;
                    boolean z = zm3VarZzza.t;
                    synchronized (wm3Var.a) {
                        if (wm3Var.c.size() == 0) {
                            is0.zzdz("Queue empty");
                            tm3Var = null;
                        } else if (wm3Var.c.size() >= 2) {
                            int i2 = Integer.MIN_VALUE;
                            tm3Var = null;
                            int i3 = 0;
                            for (tm3 tm3Var2 : wm3Var.c) {
                                int i4 = tm3Var2.n;
                                if (i4 > i2) {
                                    i = i3;
                                    tm3Var = tm3Var2;
                                    i2 = i4;
                                }
                                i3++;
                            }
                            wm3Var.c.remove(i);
                        } else {
                            tm3Var = wm3Var.c.get(0);
                            if (z) {
                                wm3Var.c.remove(0);
                            } else {
                                synchronized (tm3Var.g) {
                                    tm3Var.n -= 100;
                                }
                            }
                        }
                    }
                    if (tm3Var != null) {
                        strZzzc = tm3Var.o;
                        str = tm3Var.p;
                        strZzze = tm3Var.q;
                        if (strZzzc != null) {
                            zzr.zzkz().f().zzee(strZzzc);
                        }
                        if (strZzze != null) {
                            zzr.zzkz().f().zzef(strZzze);
                        }
                    } else {
                        strZzzc = zzr.zzkz().f().zzzc();
                        strZzze = zzr.zzkz().f().zzze();
                        str = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!zzr.zzkz().f().zzzd()) {
                        if (strZzze == null || TextUtils.isEmpty(strZzze)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", strZzze);
                        }
                    }
                    if (strZzzc != null && !zzr.zzkz().f().zzzb()) {
                        bundle2.putString("fingerprint", strZzzc);
                        if (!strZzzc.equals(str)) {
                            bundle2.putString("v_fp", str);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new wa2(bundle);
            }
        });
    }
}
