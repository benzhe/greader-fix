package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class s70 extends sd3 implements t70 {
    public static final /* synthetic */ int e = 0;

    public s70() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        h90 k90Var;
        switch (i) {
            case 2:
                float aspectRatio = ((ij1) this).getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(aspectRatio);
                return true;
            case 3:
                ((ij1) this).c1(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                x20 x20VarW5 = ((ij1) this).w5();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarW5);
                return true;
            case 5:
                float duration = ((ij1) this).getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 6:
                float currentTime = ((ij1) this).getCurrentTime();
                parcel2.writeNoException();
                parcel2.writeFloat(currentTime);
                return true;
            case 7:
                su3 videoController = ((ij1) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 8:
                boolean zHasVideoContent = ((ij1) this).hasVideoContent();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zHasVideoContent ? 1 : 0);
                return true;
            case 9:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    k90Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    k90Var = iInterfaceQueryLocalInterface instanceof h90 ? (h90) iInterfaceQueryLocalInterface : new k90(strongBinder);
                }
                ij1 ij1Var = (ij1) this;
                if (((Boolean) os3.j.f.a(y40.Q3)).booleanValue() && (ij1Var.f.h() instanceof rx0)) {
                    rx0 rx0Var = (rx0) ij1Var.f.h();
                    synchronized (rx0Var.f) {
                        rx0Var.r = k90Var;
                    }
                }
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
