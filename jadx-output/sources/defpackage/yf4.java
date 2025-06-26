package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Map;

/* loaded from: classes.dex */
public interface yf4 extends IInterface {
    void beginAdUnitExposure(String str, long j) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j) throws RemoteException;

    void endAdUnitExposure(String str, long j) throws RemoteException;

    void generateEventId(bg4 bg4Var) throws RemoteException;

    void getAppInstanceId(bg4 bg4Var) throws RemoteException;

    void getCachedAppInstanceId(bg4 bg4Var) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, bg4 bg4Var) throws RemoteException;

    void getCurrentScreenClass(bg4 bg4Var) throws RemoteException;

    void getCurrentScreenName(bg4 bg4Var) throws RemoteException;

    void getGmpAppId(bg4 bg4Var) throws RemoteException;

    void getMaxUserProperties(String str, bg4 bg4Var) throws RemoteException;

    void getTestFlag(bg4 bg4Var, int i) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z, bg4 bg4Var) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(x20 x20Var, zzy zzyVar, long j) throws RemoteException;

    void isDataCollectionEnabled(bg4 bg4Var) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, bg4 bg4Var, long j) throws RemoteException;

    void logHealthData(int i, String str, x20 x20Var, x20 x20Var2, x20 x20Var3) throws RemoteException;

    void onActivityCreated(x20 x20Var, Bundle bundle, long j) throws RemoteException;

    void onActivityDestroyed(x20 x20Var, long j) throws RemoteException;

    void onActivityPaused(x20 x20Var, long j) throws RemoteException;

    void onActivityResumed(x20 x20Var, long j) throws RemoteException;

    void onActivitySaveInstanceState(x20 x20Var, bg4 bg4Var, long j) throws RemoteException;

    void onActivityStarted(x20 x20Var, long j) throws RemoteException;

    void onActivityStopped(x20 x20Var, long j) throws RemoteException;

    void performAction(Bundle bundle, bg4 bg4Var, long j) throws RemoteException;

    void registerOnMeasurementEventListener(eg4 eg4Var) throws RemoteException;

    void resetAnalyticsData(long j) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException;

    void setConsent(Bundle bundle, long j) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j) throws RemoteException;

    void setCurrentScreen(x20 x20Var, String str, String str2, long j) throws RemoteException;

    void setDataCollectionEnabled(boolean z) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(eg4 eg4Var) throws RemoteException;

    void setInstanceIdProvider(gg4 gg4Var) throws RemoteException;

    void setMeasurementEnabled(boolean z, long j) throws RemoteException;

    void setMinimumSessionDuration(long j) throws RemoteException;

    void setSessionTimeoutDuration(long j) throws RemoteException;

    void setUserId(String str, long j) throws RemoteException;

    void setUserProperty(String str, String str2, x20 x20Var, boolean z, long j) throws RemoteException;

    void unregisterOnMeasurementEventListener(eg4 eg4Var) throws RemoteException;
}
