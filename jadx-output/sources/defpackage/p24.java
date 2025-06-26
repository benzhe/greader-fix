package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Objects;

/* loaded from: classes.dex */
public final class p24 extends g34 {
    public final /* synthetic */ String i;
    public final /* synthetic */ String j;
    public final /* synthetic */ Context k;
    public final /* synthetic */ Bundle l;
    public final /* synthetic */ q34 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p24(q34 q34Var, String str, String str2, Context context, Bundle bundle) {
        super(q34Var, true);
        this.m = q34Var;
        this.i = str;
        this.j = str2;
        this.k = context;
        this.l = bundle;
    }

    @Override // defpackage.g34
    public final void a() {
        String str;
        String str2;
        String str3;
        int iMax;
        boolean z;
        try {
            yf4 yf4VarAsInterface = null;
            if (q34.f(this.i, this.j)) {
                str3 = this.j;
                str2 = this.i;
                str = this.m.a;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            q34.d(this.k);
            boolean z2 = q34.k.booleanValue() || str2 != null;
            q34 q34Var = this.m;
            Context context = this.k;
            Objects.requireNonNull(q34Var);
            try {
                yf4VarAsInterface = ff4.asInterface(DynamiteModule.d(context, z2 ? DynamiteModule.l : DynamiteModule.j, ModuleDescriptor.MODULE_ID).c("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
            } catch (DynamiteModule.a e) {
                q34Var.e(e, true, false);
            }
            q34Var.i = yf4VarAsInterface;
            if (this.m.i == null) {
                Log.w(this.m.a, "Failed to connect to measurement client.");
                return;
            }
            int iA = DynamiteModule.a(this.k, ModuleDescriptor.MODULE_ID);
            int iB = DynamiteModule.b(this.k, ModuleDescriptor.MODULE_ID);
            if (z2) {
                iMax = Math.max(iA, iB);
                z = iB < iA;
            } else {
                if (iA > 0) {
                    iB = iA;
                }
                iMax = iB;
                z = iA > 0;
            }
            this.m.i.initialize(new y20(this.k), new zzy(37000L, iMax, z, str, str2, str3, this.l, c50.I1(this.k)), this.e);
        } catch (Exception e2) {
            this.m.e(e2, true, false);
        }
    }
}
