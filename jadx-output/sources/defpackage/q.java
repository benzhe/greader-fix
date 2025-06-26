package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.service.notification.StatusBarNotification;
import androidx.browser.trusted.TrustedWebActivityService;
import defpackage.d0;

/* loaded from: classes.dex */
public abstract class q extends Binder implements IInterface {
    public q() {
        attachInterface(this, "android.support.customtabs.trusted.ITrustedWebActivityService");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface iInterfaceQueryLocalInterface;
        if (i == 9) {
            parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
            parcel.readString();
            if (parcel.readInt() != 0) {
            }
            IBinder strongBinder = parcel.readStrongBinder();
            TrustedWebActivityService.a aVar = (TrustedWebActivityService.a) this;
            aVar.Z();
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            if (strongBinder != null && (iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("android.support.customtabs.trusted.ITrustedWebActivityCallback")) != null && (iInterfaceQueryLocalInterface instanceof p)) {
            }
            Bundle bundleD = trustedWebActivityService.d();
            parcel2.writeNoException();
            if (bundleD != null) {
                parcel2.writeInt(1);
                bundleD.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
        if (i == 1598968902) {
            parcel2.writeString("android.support.customtabs.trusted.ITrustedWebActivityService");
            return true;
        }
        Notification notificationBuild = null;
        switch (i) {
            case 2:
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                TrustedWebActivityService.a aVar2 = (TrustedWebActivityService.a) this;
                aVar2.Z();
                d0.h.y(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
                d0.h.y(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
                d0.h.y(bundle, "android.support.customtabs.trusted.NOTIFICATION");
                d0.h.y(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
                String string = bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG");
                int i3 = bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID");
                Notification notification = (Notification) bundle.getParcelable("android.support.customtabs.trusted.NOTIFICATION");
                String string2 = bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME");
                TrustedWebActivityService trustedWebActivityService2 = TrustedWebActivityService.this;
                trustedWebActivityService2.b();
                if (new q7(trustedWebActivityService2).a()) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        String strA = TrustedWebActivityService.a(string2);
                        NotificationManager notificationManager = trustedWebActivityService2.e;
                        notificationManager.createNotificationChannel(new NotificationChannel(strA, string2, 3));
                        if (notificationManager.getNotificationChannel(strA).getImportance() != 0) {
                            Notification.Builder builderRecoverBuilder = Notification.Builder.recoverBuilder(trustedWebActivityService2, notification);
                            builderRecoverBuilder.setChannelId(strA);
                            notificationBuild = builderRecoverBuilder.build();
                        }
                        if (d0.h.N(trustedWebActivityService2.e, strA)) {
                            notification = notificationBuild;
                            trustedWebActivityService2.e.notify(string, i3, notification);
                            zN = true;
                        }
                    } else {
                        trustedWebActivityService2.e.notify(string, i3, notification);
                        zN = true;
                    }
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", zN);
                parcel2.writeNoException();
                parcel2.writeInt(1);
                bundle2.writeToParcel(parcel2, 1);
                return true;
            case 3:
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                Bundle bundle3 = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                TrustedWebActivityService.a aVar3 = (TrustedWebActivityService.a) this;
                aVar3.Z();
                d0.h.y(bundle3, "android.support.customtabs.trusted.PLATFORM_TAG");
                d0.h.y(bundle3, "android.support.customtabs.trusted.PLATFORM_ID");
                String string3 = bundle3.getString("android.support.customtabs.trusted.PLATFORM_TAG");
                int i4 = bundle3.getInt("android.support.customtabs.trusted.PLATFORM_ID");
                TrustedWebActivityService trustedWebActivityService3 = TrustedWebActivityService.this;
                trustedWebActivityService3.b();
                trustedWebActivityService3.e.cancel(string3, i4);
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                TrustedWebActivityService.a aVar4 = (TrustedWebActivityService.a) this;
                aVar4.Z();
                int iE = TrustedWebActivityService.this.e();
                parcel2.writeNoException();
                parcel2.writeInt(iE);
                return true;
            case 5:
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                TrustedWebActivityService.a aVar5 = (TrustedWebActivityService.a) this;
                aVar5.Z();
                TrustedWebActivityService trustedWebActivityService4 = TrustedWebActivityService.this;
                trustedWebActivityService4.b();
                if (Build.VERSION.SDK_INT < 23) {
                    throw new IllegalStateException("onGetActiveNotifications cannot be called pre-M.");
                }
                StatusBarNotification[] activeNotifications = trustedWebActivityService4.e.getActiveNotifications();
                Bundle bundle4 = new Bundle();
                bundle4.putParcelableArray("android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS", activeNotifications);
                parcel2.writeNoException();
                parcel2.writeInt(1);
                bundle4.writeToParcel(parcel2, 1);
                return true;
            case 6:
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                Bundle bundle5 = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                TrustedWebActivityService.a aVar6 = (TrustedWebActivityService.a) this;
                aVar6.Z();
                d0.h.y(bundle5, "android.support.customtabs.trusted.CHANNEL_NAME");
                String string4 = bundle5.getString("android.support.customtabs.trusted.CHANNEL_NAME");
                TrustedWebActivityService trustedWebActivityService5 = TrustedWebActivityService.this;
                trustedWebActivityService5.b();
                zN = new q7(trustedWebActivityService5).a() ? Build.VERSION.SDK_INT < 26 ? true : d0.h.N(trustedWebActivityService5.e, TrustedWebActivityService.a(string4)) : false;
                Bundle bundle6 = new Bundle();
                bundle6.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", zN);
                parcel2.writeNoException();
                parcel2.writeInt(1);
                bundle6.writeToParcel(parcel2, 1);
                return true;
            case 7:
                parcel.enforceInterface("android.support.customtabs.trusted.ITrustedWebActivityService");
                TrustedWebActivityService.a aVar7 = (TrustedWebActivityService.a) this;
                aVar7.Z();
                TrustedWebActivityService trustedWebActivityService6 = TrustedWebActivityService.this;
                int iE2 = trustedWebActivityService6.e();
                Bundle bundle7 = new Bundle();
                if (iE2 != -1) {
                    bundle7.putParcelable("android.support.customtabs.trusted.SMALL_ICON_BITMAP", BitmapFactory.decodeResource(trustedWebActivityService6.getResources(), iE2));
                }
                parcel2.writeNoException();
                parcel2.writeInt(1);
                bundle7.writeToParcel(parcel2, 1);
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
