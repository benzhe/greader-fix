package defpackage;

import android.os.Parcel;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class zt1 extends sd3 implements pc0 {
    public final /* synthetic */ Object e;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ xs0 h;
    public final /* synthetic */ mt1 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zt1(mt1 mt1Var, Object obj, String str, long j, xs0 xs0Var) {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        this.i = mt1Var;
        this.e = obj;
        this.f = str;
        this.g = j;
        this.h = xs0Var;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            onInitializationSucceeded();
        } else {
            if (i != 3) {
                return false;
            }
            onInitializationFailed(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.pc0
    public final void onInitializationFailed(String str) {
        synchronized (this.e) {
            mt1.a(this.i, this.f, false, str, (int) (zzr.zzlc().b() - this.g));
            this.i.l.e(this.f, "error");
            this.i.o.r(this.f, "error");
            this.h.a(Boolean.FALSE);
        }
    }

    @Override // defpackage.pc0
    public final void onInitializationSucceeded() {
        synchronized (this.e) {
            mt1.a(this.i, this.f, true, "", (int) (zzr.zzlc().b() - this.g));
            this.i.l.d(this.f);
            this.i.o.D0(new af1(this.f));
            this.h.a(Boolean.TRUE);
        }
    }
}
