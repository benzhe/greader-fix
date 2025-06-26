package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzy;

/* loaded from: classes.dex */
public final class ee4 extends j24 implements yf4 {
    public ee4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // defpackage.yf4
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeLong(j);
        g0(23, parcelZ);
    }

    @Override // defpackage.yf4
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        z34.b(parcelZ, bundle);
        g0(9, parcelZ);
    }

    @Override // defpackage.yf4
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeLong(j);
        g0(24, parcelZ);
    }

    @Override // defpackage.yf4
    public final void generateEventId(bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, bg4Var);
        g0(22, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getCachedAppInstanceId(bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, bg4Var);
        g0(19, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getConditionalUserProperties(String str, String str2, bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        z34.c(parcelZ, bg4Var);
        g0(10, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getCurrentScreenClass(bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, bg4Var);
        g0(17, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getCurrentScreenName(bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, bg4Var);
        g0(16, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getGmpAppId(bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, bg4Var);
        g0(21, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getMaxUserProperties(String str, bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        z34.c(parcelZ, bg4Var);
        g0(6, parcelZ);
    }

    @Override // defpackage.yf4
    public final void getUserProperties(String str, String str2, boolean z, bg4 bg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        ClassLoader classLoader = z34.a;
        parcelZ.writeInt(z ? 1 : 0);
        z34.c(parcelZ, bg4Var);
        g0(5, parcelZ);
    }

    @Override // defpackage.yf4
    public final void initialize(x20 x20Var, zzy zzyVar, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        z34.b(parcelZ, zzyVar);
        parcelZ.writeLong(j);
        g0(1, parcelZ);
    }

    @Override // defpackage.yf4
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        z34.b(parcelZ, bundle);
        parcelZ.writeInt(z ? 1 : 0);
        parcelZ.writeInt(z2 ? 1 : 0);
        parcelZ.writeLong(j);
        g0(2, parcelZ);
    }

    @Override // defpackage.yf4
    public final void logHealthData(int i, String str, x20 x20Var, x20 x20Var2, x20 x20Var3) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(5);
        parcelZ.writeString(str);
        z34.c(parcelZ, x20Var);
        z34.c(parcelZ, x20Var2);
        z34.c(parcelZ, x20Var3);
        g0(33, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivityCreated(x20 x20Var, Bundle bundle, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        z34.b(parcelZ, bundle);
        parcelZ.writeLong(j);
        g0(27, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivityDestroyed(x20 x20Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        parcelZ.writeLong(j);
        g0(28, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivityPaused(x20 x20Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        parcelZ.writeLong(j);
        g0(29, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivityResumed(x20 x20Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        parcelZ.writeLong(j);
        g0(30, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivitySaveInstanceState(x20 x20Var, bg4 bg4Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        z34.c(parcelZ, bg4Var);
        parcelZ.writeLong(j);
        g0(31, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivityStarted(x20 x20Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        parcelZ.writeLong(j);
        g0(25, parcelZ);
    }

    @Override // defpackage.yf4
    public final void onActivityStopped(x20 x20Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        parcelZ.writeLong(j);
        g0(26, parcelZ);
    }

    @Override // defpackage.yf4
    public final void performAction(Bundle bundle, bg4 bg4Var, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, bundle);
        z34.c(parcelZ, bg4Var);
        parcelZ.writeLong(j);
        g0(32, parcelZ);
    }

    @Override // defpackage.yf4
    public final void registerOnMeasurementEventListener(eg4 eg4Var) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, eg4Var);
        g0(35, parcelZ);
    }

    @Override // defpackage.yf4
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, bundle);
        parcelZ.writeLong(j);
        g0(8, parcelZ);
    }

    @Override // defpackage.yf4
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.b(parcelZ, bundle);
        parcelZ.writeLong(j);
        g0(44, parcelZ);
    }

    @Override // defpackage.yf4
    public final void setCurrentScreen(x20 x20Var, String str, String str2, long j) throws RemoteException {
        Parcel parcelZ = Z();
        z34.c(parcelZ, x20Var);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        parcelZ.writeLong(j);
        g0(15, parcelZ);
    }

    @Override // defpackage.yf4
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel parcelZ = Z();
        ClassLoader classLoader = z34.a;
        parcelZ.writeInt(z ? 1 : 0);
        g0(39, parcelZ);
    }

    @Override // defpackage.yf4
    public final void setUserProperty(String str, String str2, x20 x20Var, boolean z, long j) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        z34.c(parcelZ, x20Var);
        parcelZ.writeInt(z ? 1 : 0);
        parcelZ.writeLong(j);
        g0(4, parcelZ);
    }
}
