package defpackage;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class vk0 extends z20<yk0> {
    public vk0() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // defpackage.z20
    public final /* synthetic */ yk0 a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return iInterfaceQueryLocalInterface instanceof yk0 ? (yk0) iInterfaceQueryLocalInterface : new bl0(iBinder);
    }
}
