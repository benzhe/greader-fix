package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajw;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import java.util.List;

/* loaded from: classes.dex */
public interface ig0 extends IInterface {
    q80 C3() throws RemoteException;

    og0 F6() throws RemoteException;

    bh0 G2() throws RemoteException;

    x20 H() throws RemoteException;

    zzaqr M() throws RemoteException;

    zzaqr O() throws RemoteException;

    void O6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException;

    void Q5(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException;

    void R3(x20 x20Var) throws RemoteException;

    void R6(x20 x20Var, vn0 vn0Var, List<String> list) throws RemoteException;

    void U1(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException;

    void V5(zzvq zzvqVar, String str) throws RemoteException;

    void a6(x20 x20Var, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException;

    void d6(x20 x20Var) throws RemoteException;

    void destroy() throws RemoteException;

    Bundle getInterstitialAdapterInfo() throws RemoteException;

    su3 getVideoController() throws RemoteException;

    vg0 h6() throws RemoteException;

    void i5(x20 x20Var, zzvq zzvqVar, String str, vn0 vn0Var, String str2) throws RemoteException;

    boolean isInitialized() throws RemoteException;

    void j1(x20 x20Var, zzvq zzvqVar, String str, String str2, ng0 ng0Var, zzaei zzaeiVar, List<String> list) throws RemoteException;

    Bundle j5() throws RemoteException;

    void m4(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, ng0 ng0Var) throws RemoteException;

    void pause() throws RemoteException;

    void r1(x20 x20Var, pc0 pc0Var, List<zzajw> list) throws RemoteException;

    wg0 r5() throws RemoteException;

    void resume() throws RemoteException;

    void s3(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void showVideo() throws RemoteException;

    void t6(zzvq zzvqVar, String str, String str2) throws RemoteException;

    void u5(x20 x20Var) throws RemoteException;

    boolean v4() throws RemoteException;

    void w2(x20 x20Var, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, ng0 ng0Var) throws RemoteException;

    Bundle zzvh() throws RemoteException;
}
