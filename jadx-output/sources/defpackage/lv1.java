package defpackage;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzaq;

/* loaded from: classes.dex */
public final class lv1 extends km0 {
    public final /* synthetic */ mv1 e;

    public lv1(mv1 mv1Var) {
        this.e = mv1Var;
    }

    @Override // defpackage.lm0
    public final void A0(ParcelFileDescriptor parcelFileDescriptor) {
        this.e.a.a(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }

    @Override // defpackage.lm0
    public final void g3(zzaq zzaqVar) {
        this.e.a.b(new zzap(zzaqVar.zzacu, zzaqVar.errorCode));
    }
}
