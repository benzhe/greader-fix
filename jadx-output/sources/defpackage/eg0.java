package defpackage;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.Map;

/* loaded from: classes.dex */
public final class eg0 extends gg0 {
    public Map<Class<? extends NetworkExtras>, NetworkExtras> e;

    @Override // defpackage.hg0
    public final ig0 B3(String str) throws RemoteException {
        hh0 hh0Var;
        try {
            try {
                Class<?> cls = Class.forName(str, false, eg0.class.getClassLoader());
                if (MediationAdapter.class.isAssignableFrom(cls)) {
                    MediationAdapter mediationAdapter = (MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    return new sh0(mediationAdapter, (com.google.ads.mediation.NetworkExtras) this.e.get(mediationAdapter.getAdditionalParametersType()));
                }
                if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom(cls)) {
                    return new hh0((com.google.android.gms.ads.mediation.MediationAdapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                if (Adapter.class.isAssignableFrom(cls)) {
                    return new hh0((Adapter) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                is0.zzez(sb.toString());
                throw new RemoteException();
            } catch (Throwable th) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 43);
                sb2.append("Could not instantiate mediation adapter: ");
                sb2.append(str);
                sb2.append(". ");
                is0.zzd(sb2.toString(), th);
                throw new RemoteException();
            }
        } catch (Throwable unused) {
            is0.zzdz("Reflection failed, retrying using direct instantiation");
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                hh0Var = new hh0(new AdMobAdapter());
            } else if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                hh0Var = new hh0(new AdUrlAdapter());
            } else {
                if (!"com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                        CustomEventAdapter customEventAdapter = new CustomEventAdapter();
                        return new sh0(customEventAdapter, (CustomEventExtras) this.e.get(customEventAdapter.getAdditionalParametersType()));
                    }
                    throw new RemoteException();
                }
                hh0Var = new hh0(new com.google.android.gms.ads.mediation.customevent.CustomEventAdapter());
            }
            return hh0Var;
        }
    }

    @Override // defpackage.hg0
    public final boolean V1(String str) throws RemoteException {
        try {
            return Adapter.class.isAssignableFrom(Class.forName(str, false, eg0.class.getClassLoader()));
        } catch (Throwable unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            is0.zzez(sb.toString());
            return false;
        }
    }

    @Override // defpackage.hg0
    public final boolean W0(String str) throws RemoteException {
        try {
            return CustomEvent.class.isAssignableFrom(Class.forName(str, false, eg0.class.getClassLoader()));
        } catch (Throwable unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            is0.zzez(sb.toString());
            return false;
        }
    }

    @Override // defpackage.hg0
    public final vi0 h4(String str) throws RemoteException {
        return new ej0((RtbAdapter) Class.forName(str, false, bj0.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
    }
}
