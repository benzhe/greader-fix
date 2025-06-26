package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzajm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class gv3 {
    public static gv3 i;
    public zt3 c;
    public RewardedVideoAd f;
    public InitializationStatus h;
    public final Object b = new Object();
    public boolean d = false;
    public boolean e = false;
    public RequestConfiguration g = new RequestConfiguration.Builder().build();
    public ArrayList<OnInitializationCompleteListener> a = new ArrayList<>();

    public class a extends sc0 {
        public a(jv3 jv3Var) {
        }

        @Override // defpackage.tc0
        public final void O5(List<zzajm> list) throws RemoteException {
            gv3 gv3Var = gv3.this;
            int i = 0;
            gv3Var.d = false;
            gv3Var.e = true;
            InitializationStatus initializationStatusE = gv3.e(list);
            ArrayList<OnInitializationCompleteListener> arrayList = gv3.g().a;
            int size = arrayList.size();
            while (i < size) {
                OnInitializationCompleteListener onInitializationCompleteListener = arrayList.get(i);
                i++;
                onInitializationCompleteListener.onInitializationComplete(initializationStatusE);
            }
            gv3.g().a.clear();
        }
    }

    public static InitializationStatus e(List<zzajm> list) {
        HashMap map = new HashMap();
        for (zzajm zzajmVar : list) {
            map.put(zzajmVar.e, new uc0(zzajmVar.f ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzajmVar.h, zzajmVar.g));
        }
        return new wc0(map);
    }

    public static gv3 g() {
        gv3 gv3Var;
        synchronized (gv3.class) {
            if (i == null) {
                i = new gv3();
            }
            gv3Var = i;
        }
        return gv3Var;
    }

    public final InitializationStatus a() {
        synchronized (this.b) {
            bi.m(this.c != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InitializationStatus initializationStatus = this.h;
                if (initializationStatus != null) {
                    return initializationStatus;
                }
                return e(this.c.E1());
            } catch (RemoteException unused) {
                is0.zzex("Unable to get Initialization status.");
                return null;
            }
        }
    }

    public final RewardedVideoAd b(Context context) {
        synchronized (this.b) {
            RewardedVideoAd rewardedVideoAd = this.f;
            if (rewardedVideoAd != null) {
                return rewardedVideoAd;
            }
            wn0 wn0Var = new wn0(context, new ns3(os3.j.b, context, new eg0()).b(context, false));
            this.f = wn0Var;
            return wn0Var;
        }
    }

    public final String c() {
        String strN4;
        synchronized (this.b) {
            bi.m(this.c != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                strN4 = c50.n4(this.c.E3());
            } catch (RemoteException e) {
                is0.zzc("Unable to get version string.", e);
                return "";
            }
        }
        return strN4;
    }

    public final void d(final Context context, String str, final OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.b) {
            if (this.d) {
                if (onInitializationCompleteListener != null) {
                    g().a.add(onInitializationCompleteListener);
                }
                return;
            }
            if (this.e) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(a());
                }
                return;
            }
            this.d = true;
            if (onInitializationCompleteListener != null) {
                g().a.add(onInitializationCompleteListener);
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            try {
                if (yf0.b == null) {
                    yf0.b = new yf0();
                }
                yf0.b.a(context, str);
                f(context);
                if (onInitializationCompleteListener != null) {
                    this.c.e4(new a(null));
                }
                this.c.L4(new eg0());
                this.c.m0();
                this.c.J3(str, new y20(new Runnable(this, context) { // from class: fv3
                    public final gv3 e;
                    public final Context f;

                    {
                        this.e = this;
                        this.f = context;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.b(this.f);
                    }
                }));
                if (this.g.getTagForChildDirectedTreatment() != -1 || this.g.getTagForUnderAgeOfConsent() != -1) {
                    try {
                        this.c.N2(new zzaat(this.g));
                    } catch (RemoteException e) {
                        is0.zzc("Unable to set request configuration parcel.", e);
                    }
                }
                y40.a(context);
                if (!((Boolean) os3.j.f.a(y40.a3)).booleanValue() && !c().endsWith("0")) {
                    is0.zzex("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                    this.h = new InitializationStatus(this) { // from class: hv3
                        public final gv3 a;

                        {
                            this.a = this;
                        }

                        @Override // com.google.android.gms.ads.initialization.InitializationStatus
                        public final Map getAdapterStatusMap() {
                            HashMap map = new HashMap();
                            map.put("com.google.android.gms.ads.MobileAds", new jv3());
                            return map;
                        }
                    };
                    if (onInitializationCompleteListener != null) {
                        zr0.b.post(new Runnable(this, onInitializationCompleteListener) { // from class: iv3
                            public final gv3 e;
                            public final OnInitializationCompleteListener f;

                            {
                                this.e = this;
                                this.f = onInitializationCompleteListener;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f.onInitializationComplete(this.e.h);
                            }
                        });
                    }
                }
            } catch (RemoteException e2) {
                is0.zzd("MobileAdsSettingManager initialization failed", e2);
            }
        }
    }

    public final void f(Context context) {
        if (this.c == null) {
            this.c = new is3(os3.j.b, context).b(context, false);
        }
    }
}
