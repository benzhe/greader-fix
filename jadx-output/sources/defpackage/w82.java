package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class w82 implements qd2<x82> {
    public final qd2<td2> a;
    public final ll2 b;
    public final Context c;
    public final or0 d;

    public w82(ha2<td2> ha2Var, ll2 ll2Var, Context context, or0 or0Var) {
        this.a = ha2Var;
        this.b = ll2Var;
        this.c = context;
        this.d = or0Var;
    }

    @Override // defpackage.qd2
    public final aw2<x82> a() {
        return vt2.l(this.a.a(), new vs2(this) { // from class: z82
            public final w82 a;

            {
                this.a = this;
            }

            @Override // defpackage.vs2
            public final Object apply(Object obj) {
                String str;
                boolean z;
                String strZzzm;
                float f;
                int i;
                int i2;
                int i3;
                DisplayMetrics displayMetrics;
                w82 w82Var = this.a;
                zzvt zzvtVar = w82Var.b.e;
                zzvt[] zzvtVarArr = zzvtVar.k;
                if (zzvtVarArr != null) {
                    str = null;
                    boolean z2 = false;
                    boolean z3 = false;
                    z = false;
                    for (zzvt zzvtVar2 : zzvtVarArr) {
                        boolean z4 = zzvtVar2.m;
                        if (!z4 && !z2) {
                            str = zzvtVar2.e;
                            z2 = true;
                        }
                        if (z4 && !z3) {
                            z3 = true;
                            z = true;
                        }
                        if (z2 && z3) {
                            break;
                        }
                    }
                } else {
                    str = zzvtVar.e;
                    z = zzvtVar.m;
                }
                Resources resources = w82Var.c.getResources();
                if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    strZzzm = null;
                    f = 0.0f;
                    i = 0;
                    i2 = 0;
                } else {
                    float f2 = displayMetrics.density;
                    int i4 = displayMetrics.widthPixels;
                    i2 = displayMetrics.heightPixels;
                    strZzzm = w82Var.d.f().zzzm();
                    i = i4;
                    f = f2;
                }
                StringBuilder sb = new StringBuilder();
                zzvt[] zzvtVarArr2 = zzvtVar.k;
                if (zzvtVarArr2 != null) {
                    boolean z5 = false;
                    for (zzvt zzvtVar3 : zzvtVarArr2) {
                        if (zzvtVar3.m) {
                            z5 = true;
                        } else {
                            if (sb.length() != 0) {
                                sb.append("|");
                            }
                            int i5 = zzvtVar3.i;
                            if (i5 == -1 && f != 0.0f) {
                                i5 = (int) (zzvtVar3.j / f);
                            }
                            sb.append(i5);
                            sb.append("x");
                            int i6 = zzvtVar3.f;
                            if (i6 == -2 && f != 0.0f) {
                                i6 = (int) (zzvtVar3.g / f);
                            }
                            sb.append(i6);
                        }
                    }
                    if (z5) {
                        if (sb.length() != 0) {
                            i3 = 0;
                            sb.insert(0, "|");
                        } else {
                            i3 = 0;
                        }
                        sb.insert(i3, "320x50");
                    }
                }
                return new x82(zzvtVar, str, z, sb.toString(), f, i, i2, strZzzm, w82Var.b.p);
            }
        }, ms0.f);
    }
}
