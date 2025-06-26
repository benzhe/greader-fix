package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzy;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class ff4 extends c34 implements yf4 {
    public ff4() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static yf4 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return iInterfaceQueryLocalInterface instanceof yf4 ? (yf4) iInterfaceQueryLocalInterface : new ee4(iBinder);
    }

    @Override // defpackage.c34
    public final boolean Z(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        bg4 zf4Var = null;
        bg4 zf4Var2 = null;
        bg4 zf4Var3 = null;
        eg4 cg4Var = null;
        eg4 cg4Var2 = null;
        eg4 cg4Var3 = null;
        bg4 zf4Var4 = null;
        bg4 zf4Var5 = null;
        bg4 zf4Var6 = null;
        bg4 zf4Var7 = null;
        bg4 zf4Var8 = null;
        bg4 zf4Var9 = null;
        gg4 fg4Var = null;
        bg4 zf4Var10 = null;
        bg4 zf4Var11 = null;
        bg4 zf4Var12 = null;
        bg4 zf4Var13 = null;
        bg4 zf4Var14 = null;
        switch (i) {
            case 1:
                initialize(x20.a.g0(parcel.readStrongBinder()), (zzy) z34.a(parcel, zzy.CREATOR), parcel.readLong());
                break;
            case 2:
                logEvent(parcel.readString(), parcel.readString(), (Bundle) z34.a(parcel, Bundle.CREATOR), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readLong());
                break;
            case 3:
                String string = parcel.readString();
                String string2 = parcel.readString();
                Bundle bundle = (Bundle) z34.a(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var = iInterfaceQueryLocalInterface instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface : new zf4(strongBinder);
                }
                logEventAndBundle(string, string2, bundle, zf4Var, parcel.readLong());
                break;
            case 4:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
                ClassLoader classLoader = z34.a;
                setUserProperty(string3, string4, x20VarG0, parcel.readInt() != 0, parcel.readLong());
                break;
            case 5:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                ClassLoader classLoader2 = z34.a;
                boolean z = parcel.readInt() != 0;
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var14 = iInterfaceQueryLocalInterface2 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface2 : new zf4(strongBinder2);
                }
                getUserProperties(string5, string6, z, zf4Var14);
                break;
            case 6:
                String string7 = parcel.readString();
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var13 = iInterfaceQueryLocalInterface3 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface3 : new zf4(strongBinder3);
                }
                getMaxUserProperties(string7, zf4Var13);
                break;
            case 7:
                setUserId(parcel.readString(), parcel.readLong());
                break;
            case 8:
                setConditionalUserProperty((Bundle) z34.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 9:
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) z34.a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var12 = iInterfaceQueryLocalInterface4 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface4 : new zf4(strongBinder4);
                }
                getConditionalUserProperties(string8, string9, zf4Var12);
                break;
            case 11:
                ClassLoader classLoader3 = z34.a;
                setMeasurementEnabled(parcel.readInt() != 0, parcel.readLong());
                break;
            case 12:
                resetAnalyticsData(parcel.readLong());
                break;
            case 13:
                setMinimumSessionDuration(parcel.readLong());
                break;
            case 14:
                setSessionTimeoutDuration(parcel.readLong());
                break;
            case 15:
                setCurrentScreen(x20.a.g0(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readLong());
                break;
            case 16:
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var11 = iInterfaceQueryLocalInterface5 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface5 : new zf4(strongBinder5);
                }
                getCurrentScreenName(zf4Var11);
                break;
            case 17:
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface6 = strongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var10 = iInterfaceQueryLocalInterface6 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface6 : new zf4(strongBinder6);
                }
                getCurrentScreenClass(zf4Var10);
                break;
            case 18:
                IBinder strongBinder7 = parcel.readStrongBinder();
                if (strongBinder7 != null) {
                    IInterface iInterfaceQueryLocalInterface7 = strongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    fg4Var = iInterfaceQueryLocalInterface7 instanceof gg4 ? (gg4) iInterfaceQueryLocalInterface7 : new fg4(strongBinder7);
                }
                setInstanceIdProvider(fg4Var);
                break;
            case 19:
                IBinder strongBinder8 = parcel.readStrongBinder();
                if (strongBinder8 != null) {
                    IInterface iInterfaceQueryLocalInterface8 = strongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var9 = iInterfaceQueryLocalInterface8 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface8 : new zf4(strongBinder8);
                }
                getCachedAppInstanceId(zf4Var9);
                break;
            case 20:
                IBinder strongBinder9 = parcel.readStrongBinder();
                if (strongBinder9 != null) {
                    IInterface iInterfaceQueryLocalInterface9 = strongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var8 = iInterfaceQueryLocalInterface9 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface9 : new zf4(strongBinder9);
                }
                getAppInstanceId(zf4Var8);
                break;
            case 21:
                IBinder strongBinder10 = parcel.readStrongBinder();
                if (strongBinder10 != null) {
                    IInterface iInterfaceQueryLocalInterface10 = strongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var7 = iInterfaceQueryLocalInterface10 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface10 : new zf4(strongBinder10);
                }
                getGmpAppId(zf4Var7);
                break;
            case 22:
                IBinder strongBinder11 = parcel.readStrongBinder();
                if (strongBinder11 != null) {
                    IInterface iInterfaceQueryLocalInterface11 = strongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var6 = iInterfaceQueryLocalInterface11 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface11 : new zf4(strongBinder11);
                }
                generateEventId(zf4Var6);
                break;
            case 23:
                beginAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 24:
                endAdUnitExposure(parcel.readString(), parcel.readLong());
                break;
            case 25:
                onActivityStarted(x20.a.g0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 26:
                onActivityStopped(x20.a.g0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 27:
                onActivityCreated(x20.a.g0(parcel.readStrongBinder()), (Bundle) z34.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 28:
                onActivityDestroyed(x20.a.g0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 29:
                onActivityPaused(x20.a.g0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 30:
                onActivityResumed(x20.a.g0(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 31:
                x20 x20VarG02 = x20.a.g0(parcel.readStrongBinder());
                IBinder strongBinder12 = parcel.readStrongBinder();
                if (strongBinder12 != null) {
                    IInterface iInterfaceQueryLocalInterface12 = strongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var5 = iInterfaceQueryLocalInterface12 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface12 : new zf4(strongBinder12);
                }
                onActivitySaveInstanceState(x20VarG02, zf4Var5, parcel.readLong());
                break;
            case 32:
                Bundle bundle2 = (Bundle) z34.a(parcel, Bundle.CREATOR);
                IBinder strongBinder13 = parcel.readStrongBinder();
                if (strongBinder13 != null) {
                    IInterface iInterfaceQueryLocalInterface13 = strongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var4 = iInterfaceQueryLocalInterface13 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface13 : new zf4(strongBinder13);
                }
                performAction(bundle2, zf4Var4, parcel.readLong());
                break;
            case 33:
                logHealthData(parcel.readInt(), parcel.readString(), x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
                break;
            case 34:
                IBinder strongBinder14 = parcel.readStrongBinder();
                if (strongBinder14 != null) {
                    IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    cg4Var3 = iInterfaceQueryLocalInterface14 instanceof eg4 ? (eg4) iInterfaceQueryLocalInterface14 : new cg4(strongBinder14);
                }
                setEventInterceptor(cg4Var3);
                break;
            case 35:
                IBinder strongBinder15 = parcel.readStrongBinder();
                if (strongBinder15 != null) {
                    IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    cg4Var2 = iInterfaceQueryLocalInterface15 instanceof eg4 ? (eg4) iInterfaceQueryLocalInterface15 : new cg4(strongBinder15);
                }
                registerOnMeasurementEventListener(cg4Var2);
                break;
            case 36:
                IBinder strongBinder16 = parcel.readStrongBinder();
                if (strongBinder16 != null) {
                    IInterface iInterfaceQueryLocalInterface16 = strongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    cg4Var = iInterfaceQueryLocalInterface16 instanceof eg4 ? (eg4) iInterfaceQueryLocalInterface16 : new cg4(strongBinder16);
                }
                unregisterOnMeasurementEventListener(cg4Var);
                break;
            case 37:
                initForTests(parcel.readHashMap(z34.a));
                break;
            case 38:
                IBinder strongBinder17 = parcel.readStrongBinder();
                if (strongBinder17 != null) {
                    IInterface iInterfaceQueryLocalInterface17 = strongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var3 = iInterfaceQueryLocalInterface17 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface17 : new zf4(strongBinder17);
                }
                getTestFlag(zf4Var3, parcel.readInt());
                break;
            case 39:
                ClassLoader classLoader4 = z34.a;
                setDataCollectionEnabled(parcel.readInt() != 0);
                break;
            case 40:
                IBinder strongBinder18 = parcel.readStrongBinder();
                if (strongBinder18 != null) {
                    IInterface iInterfaceQueryLocalInterface18 = strongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    zf4Var2 = iInterfaceQueryLocalInterface18 instanceof bg4 ? (bg4) iInterfaceQueryLocalInterface18 : new zf4(strongBinder18);
                }
                isDataCollectionEnabled(zf4Var2);
                break;
            case 41:
            default:
                return false;
            case 42:
                setDefaultEventParameters((Bundle) z34.a(parcel, Bundle.CREATOR));
                break;
            case 43:
                clearMeasurementEnabled(parcel.readLong());
                break;
            case 44:
                setConsent((Bundle) z34.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
            case 45:
                setConsentThirdParty((Bundle) z34.a(parcel, Bundle.CREATOR), parcel.readLong());
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
