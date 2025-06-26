package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface xk0 extends IInterface {
    void onActivityResult(int i, int i2, Intent intent) throws RemoteException;

    void onBackPressed() throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onPause() throws RemoteException;

    void onRestart() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;

    void onStart() throws RemoteException;

    void onStop() throws RemoteException;

    void onUserLeaveHint() throws RemoteException;

    void zzae(x20 x20Var) throws RemoteException;

    void zzdq() throws RemoteException;

    boolean zzwh() throws RemoteException;
}
