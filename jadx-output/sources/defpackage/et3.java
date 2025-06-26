package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public abstract class et3 extends sd3 implements bt3 {
    public et3() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        g90 i90Var;
        us3 ws3Var = null;
        ed0 gd0Var = null;
        o90 q90Var = null;
        j90 l90Var = null;
        wt3 vt3Var = null;
        a90 d90Var = null;
        z80 b90Var = null;
        u80 w80Var = null;
        switch (i) {
            case 1:
                at3 at3VarO4 = o4();
                parcel2.writeNoException();
                rd3.b(parcel2, at3VarO4);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    ws3Var = iInterfaceQueryLocalInterface instanceof us3 ? (us3) iInterfaceQueryLocalInterface : new ws3(strongBinder);
                }
                J6(ws3Var);
                parcel2.writeNoException();
                return true;
            case 3:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
                    w80Var = iInterfaceQueryLocalInterface2 instanceof u80 ? (u80) iInterfaceQueryLocalInterface2 : new w80(strongBinder2);
                }
                x1(w80Var);
                parcel2.writeNoException();
                return true;
            case 4:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
                    b90Var = iInterfaceQueryLocalInterface3 instanceof z80 ? (z80) iInterfaceQueryLocalInterface3 : new b90(strongBinder3);
                }
                Q3(b90Var);
                parcel2.writeNoException();
                return true;
            case 5:
                String string = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 == null) {
                    i90Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
                    i90Var = iInterfaceQueryLocalInterface4 instanceof g90 ? (g90) iInterfaceQueryLocalInterface4 : new i90(strongBinder4);
                }
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
                    d90Var = iInterfaceQueryLocalInterface5 instanceof a90 ? (a90) iInterfaceQueryLocalInterface5 : new d90(strongBinder5);
                }
                z5(string, i90Var, d90Var);
                parcel2.writeNoException();
                return true;
            case 6:
                X0((zzaei) rd3.a(parcel, zzaei.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    vt3Var = iInterfaceQueryLocalInterface6 instanceof wt3 ? (wt3) iInterfaceQueryLocalInterface6 : new vt3(strongBinder6);
                }
                i4(vt3Var);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
                    l90Var = iInterfaceQueryLocalInterface7 instanceof j90 ? (j90) iInterfaceQueryLocalInterface7 : new l90(strongBinder7);
                }
                H2(l90Var, (zzvt) rd3.a(parcel, zzvt.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                I1((PublisherAdViewOptions) rd3.a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
                    q90Var = iInterfaceQueryLocalInterface8 instanceof o90 ? (o90) iInterfaceQueryLocalInterface8 : new q90(strongBinder8);
                }
                G3(q90Var);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                w6((zzajy) rd3.a(parcel, zzajy.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
                    gd0Var = iInterfaceQueryLocalInterface9 instanceof ed0 ? (ed0) iInterfaceQueryLocalInterface9 : new gd0(strongBinder9);
                }
                u3(gd0Var);
                parcel2.writeNoException();
                return true;
            case 15:
                a1((AdManagerAdViewOptions) rd3.a(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
