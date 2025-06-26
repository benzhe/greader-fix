package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class yi0 extends sd3 implements vi0 {
    public static final /* synthetic */ int e = 0;

    public yi0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        aj0 cj0Var = null;
        oi0 qi0Var = null;
        ii0 ki0Var = null;
        ti0 wi0Var = null;
        oi0 qi0Var2 = null;
        ti0 wi0Var2 = null;
        ni0 pi0Var = null;
        ii0 ki0Var2 = null;
        if (i == 1) {
            x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
            String string = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) rd3.a(parcel, creator);
            Bundle bundle2 = (Bundle) rd3.a(parcel, creator);
            zzvt zzvtVar = (zzvt) rd3.a(parcel, zzvt.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                cj0Var = iInterfaceQueryLocalInterface instanceof aj0 ? (aj0) iInterfaceQueryLocalInterface : new cj0(strongBinder);
            }
            ((ej0) this).a3(x20VarG0, string, bundle, bundle2, zzvtVar, cj0Var);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzaqr zzaqrVarO = ((ej0) this).O();
            parcel2.writeNoException();
            rd3.d(parcel2, zzaqrVarO);
        } else if (i == 3) {
            zzaqr zzaqrVarM = ((ej0) this).M();
            parcel2.writeNoException();
            rd3.d(parcel2, zzaqrVarM);
        } else if (i == 5) {
            su3 videoController = ((ej0) this).getVideoController();
            parcel2.writeNoException();
            rd3.b(parcel2, videoController);
        } else if (i == 10) {
            x20.a.g0(parcel.readStrongBinder());
            parcel2.writeNoException();
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String string2 = parcel.readString();
                    String string3 = parcel.readString();
                    zzvq zzvqVar = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG02 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder2 = parcel.readStrongBinder();
                    if (strongBinder2 != null) {
                        IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        ki0Var2 = iInterfaceQueryLocalInterface2 instanceof ii0 ? (ii0) iInterfaceQueryLocalInterface2 : new ki0(strongBinder2);
                    }
                    ((ej0) this).B2(string2, string3, zzvqVar, x20VarG02, ki0Var2, mg0.W6(parcel.readStrongBinder()), (zzvt) rd3.a(parcel, zzvt.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 14:
                    String string4 = parcel.readString();
                    String string5 = parcel.readString();
                    zzvq zzvqVar2 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG03 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder3 = parcel.readStrongBinder();
                    if (strongBinder3 != null) {
                        IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        pi0Var = iInterfaceQueryLocalInterface3 instanceof ni0 ? (ni0) iInterfaceQueryLocalInterface3 : new pi0(strongBinder3);
                    }
                    ((ej0) this).e6(string4, string5, zzvqVar2, x20VarG03, pi0Var, mg0.W6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 15:
                    boolean zI6 = ((ej0) this).i6(x20.a.g0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    ClassLoader classLoader = rd3.a;
                    parcel2.writeInt(zI6 ? 1 : 0);
                    break;
                case 16:
                    String string6 = parcel.readString();
                    String string7 = parcel.readString();
                    zzvq zzvqVar3 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG04 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder4 = parcel.readStrongBinder();
                    if (strongBinder4 != null) {
                        IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        wi0Var2 = iInterfaceQueryLocalInterface4 instanceof ti0 ? (ti0) iInterfaceQueryLocalInterface4 : new wi0(strongBinder4);
                    }
                    ((ej0) this).K5(string6, string7, zzvqVar3, x20VarG04, wi0Var2, mg0.W6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 17:
                    boolean zQ6 = ((ej0) this).Q6(x20.a.g0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    ClassLoader classLoader2 = rd3.a;
                    parcel2.writeInt(zQ6 ? 1 : 0);
                    break;
                case 18:
                    String string8 = parcel.readString();
                    String string9 = parcel.readString();
                    zzvq zzvqVar4 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG05 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder5 = parcel.readStrongBinder();
                    if (strongBinder5 != null) {
                        IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        qi0Var2 = iInterfaceQueryLocalInterface5 instanceof oi0 ? (oi0) iInterfaceQueryLocalInterface5 : new qi0(strongBinder5);
                    }
                    ((ej0) this).S3(string8, string9, zzvqVar4, x20VarG05, qi0Var2, mg0.W6(parcel.readStrongBinder()), null);
                    parcel2.writeNoException();
                    break;
                case 19:
                    ((ej0) this).i = parcel.readString();
                    parcel2.writeNoException();
                    break;
                case 20:
                    String string10 = parcel.readString();
                    String string11 = parcel.readString();
                    zzvq zzvqVar5 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG06 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder6 = parcel.readStrongBinder();
                    if (strongBinder6 != null) {
                        IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        wi0Var = iInterfaceQueryLocalInterface6 instanceof ti0 ? (ti0) iInterfaceQueryLocalInterface6 : new wi0(strongBinder6);
                    }
                    ((ej0) this).C6(string10, string11, zzvqVar5, x20VarG06, wi0Var, mg0.W6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 21:
                    String string12 = parcel.readString();
                    String string13 = parcel.readString();
                    zzvq zzvqVar6 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG07 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder7 = parcel.readStrongBinder();
                    if (strongBinder7 != null) {
                        IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        ki0Var = iInterfaceQueryLocalInterface7 instanceof ii0 ? (ii0) iInterfaceQueryLocalInterface7 : new ki0(strongBinder7);
                    }
                    ((ej0) this).x3(string12, string13, zzvqVar6, x20VarG07, ki0Var, mg0.W6(parcel.readStrongBinder()), (zzvt) rd3.a(parcel, zzvt.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 22:
                    String string14 = parcel.readString();
                    String string15 = parcel.readString();
                    zzvq zzvqVar7 = (zzvq) rd3.a(parcel, zzvq.CREATOR);
                    x20 x20VarG08 = x20.a.g0(parcel.readStrongBinder());
                    IBinder strongBinder8 = parcel.readStrongBinder();
                    if (strongBinder8 != null) {
                        IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        qi0Var = iInterfaceQueryLocalInterface8 instanceof oi0 ? (oi0) iInterfaceQueryLocalInterface8 : new qi0(strongBinder8);
                    }
                    ((ej0) this).S3(string14, string15, zzvqVar7, x20VarG08, qi0Var, mg0.W6(parcel.readStrongBinder()), (zzaei) rd3.a(parcel, zzaei.CREATOR));
                    parcel2.writeNoException();
                    break;
                default:
                    return false;
            }
        } else {
            parcel.createStringArray();
            parcel2.writeNoException();
        }
        return true;
    }
}
