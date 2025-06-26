package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.measurement.zzy;
import com.google.android.gms.measurement.internal.zzkr;
import defpackage.a05;
import defpackage.bi;
import defpackage.c35;
import defpackage.c50;
import defpackage.cs4;
import defpackage.f4;
import defpackage.fz4;
import defpackage.gz4;
import defpackage.p25;
import defpackage.rx4;
import defpackage.sz4;
import defpackage.tz4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.text.lookup.InetAddressKeys;

@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {
    public static volatile AppMeasurement c;
    public final rx4 a;
    public final tz4 b;

    public static class ConditionalUserProperty {

        @Keep
        public boolean mActive;

        @RecentlyNonNull
        @Keep
        public String mAppId;

        @Keep
        public long mCreationTimestamp;

        @RecentlyNonNull
        @Keep
        public String mExpiredEventName;

        @RecentlyNonNull
        @Keep
        public Bundle mExpiredEventParams;

        @RecentlyNonNull
        @Keep
        public String mName;

        @RecentlyNonNull
        @Keep
        public String mOrigin;

        @Keep
        public long mTimeToLive;

        @RecentlyNonNull
        @Keep
        public String mTimedOutEventName;

        @RecentlyNonNull
        @Keep
        public Bundle mTimedOutEventParams;

        @RecentlyNonNull
        @Keep
        public String mTriggerEventName;

        @Keep
        public long mTriggerTimeout;

        @RecentlyNonNull
        @Keep
        public String mTriggeredEventName;

        @RecentlyNonNull
        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        public long mTriggeredTimestamp;

        @RecentlyNonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(Bundle bundle) {
            Objects.requireNonNull(bundle, "null reference");
            this.mAppId = (String) c50.W2(bundle, "app_id", String.class, null);
            this.mOrigin = (String) c50.W2(bundle, "origin", String.class, null);
            this.mName = (String) c50.W2(bundle, InetAddressKeys.KEY_NAME, String.class, null);
            this.mValue = c50.W2(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) c50.W2(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) c50.W2(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) c50.W2(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) c50.W2(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) c50.W2(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) c50.W2(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) c50.W2(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) c50.W2(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) c50.W2(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) c50.W2(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) c50.W2(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) c50.W2(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        public final Bundle a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString(InetAddressKeys.KEY_NAME, str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                c50.Z1(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString("trigger_event_name", str4);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString("timed_out_event_name", str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString("triggered_event_name", str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString("expired_event_name", str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }
    }

    public AppMeasurement(rx4 rx4Var) {
        Objects.requireNonNull(rx4Var, "null reference");
        this.a = rx4Var;
        this.b = null;
    }

    @RecentlyNonNull
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(@RecentlyNonNull Context context) {
        tz4 tz4Var;
        if (c == null) {
            synchronized (AppMeasurement.class) {
                if (c == null) {
                    try {
                        tz4Var = (tz4) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    } catch (ClassNotFoundException | Exception unused) {
                        tz4Var = null;
                    }
                    if (tz4Var != null) {
                        c = new AppMeasurement(tz4Var);
                    } else {
                        c = new AppMeasurement(rx4.d(context, new zzy(0L, 0L, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return c;
    }

    @Keep
    public void beginAdUnitExposure(@RecentlyNonNull String str) throws IllegalStateException {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            tz4Var.a(str);
        } else {
            Objects.requireNonNull(this.a, "null reference");
            this.a.c().f(str, this.a.n.b());
        }
    }

    @Keep
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) throws IllegalStateException {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            tz4Var.f(str, str2, bundle);
        } else {
            Objects.requireNonNull(this.a, "null reference");
            this.a.s().r(str, str2, bundle);
        }
    }

    @Keep
    public void endAdUnitExposure(@RecentlyNonNull String str) throws IllegalStateException {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            tz4Var.d(str);
        } else {
            Objects.requireNonNull(this.a, "null reference");
            this.a.c().g(str, this.a.n.b());
        }
    }

    @Keep
    public long generateEventId() {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.j();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.t().c0();
    }

    @RecentlyNonNull
    @Keep
    public String getAppInstanceId() {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.e();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.s().g.get();
    }

    @RecentlyNonNull
    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        List<Bundle> listW;
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            listW = tz4Var.b(str, str2);
        } else {
            Objects.requireNonNull(this.a, "null reference");
            sz4 sz4VarS = this.a.s();
            if (sz4VarS.a.m().n()) {
                sz4VarS.a.a().f.a("Cannot get conditional user properties from analytics worker thread");
                listW = new ArrayList<>(0);
            } else {
                c35 c35Var = sz4VarS.a.f;
                if (c35.a()) {
                    sz4VarS.a.a().f.a("Cannot get conditional user properties from main thread");
                    listW = new ArrayList<>(0);
                } else {
                    AtomicReference atomicReference = new AtomicReference();
                    sz4VarS.a.m().r(atomicReference, 5000L, "get conditional user properties", new fz4(sz4VarS, atomicReference, str, str2));
                    List list = (List) atomicReference.get();
                    if (list == null) {
                        sz4VarS.a.a().f.b("Timed out waiting for get conditional user properties", null);
                        listW = new ArrayList<>();
                    } else {
                        listW = p25.W(list);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList(listW != null ? listW.size() : 0);
        Iterator<Bundle> it = listW.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty(it.next()));
        }
        return arrayList;
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenClass() {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.g();
        }
        Objects.requireNonNull(this.a, "null reference");
        a05 a05Var = this.a.s().a.y().c;
        if (a05Var != null) {
            return a05Var.b;
        }
        return null;
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenName() {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.p();
        }
        Objects.requireNonNull(this.a, "null reference");
        a05 a05Var = this.a.s().a.y().c;
        if (a05Var != null) {
            return a05Var.a;
        }
        return null;
    }

    @RecentlyNonNull
    @Keep
    public String getGmpAppId() {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.i();
        }
        Objects.requireNonNull(this.a, "null reference");
        return this.a.s().s();
    }

    @Keep
    public int getMaxUserProperties(@RecentlyNonNull String str) {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.h(str);
        }
        Objects.requireNonNull(this.a, "null reference");
        sz4 sz4VarS = this.a.s();
        Objects.requireNonNull(sz4VarS);
        bi.g(str);
        cs4 cs4Var = sz4VarS.a.g;
        return 25;
    }

    @RecentlyNonNull
    @Keep
    public Map<String, Object> getUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2, boolean z) {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            return tz4Var.k(str, str2, z);
        }
        Objects.requireNonNull(this.a, "null reference");
        sz4 sz4VarS = this.a.s();
        if (sz4VarS.a.m().n()) {
            sz4VarS.a.a().f.a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        c35 c35Var = sz4VarS.a.f;
        if (c35.a()) {
            sz4VarS.a.a().f.a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        sz4VarS.a.m().r(atomicReference, 5000L, "get user properties", new gz4(sz4VarS, atomicReference, str, str2, z));
        List<zzkr> list = (List) atomicReference.get();
        if (list == null) {
            sz4VarS.a.a().f.b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        f4 f4Var = new f4(list.size());
        for (zzkr zzkrVar : list) {
            Object objN = zzkrVar.n();
            if (objN != null) {
                f4Var.put(zzkrVar.f, objN);
            }
        }
        return f4Var;
    }

    @Keep
    public void logEventInternal(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) throws IllegalStateException {
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            tz4Var.V(str, str2, bundle);
        } else {
            Objects.requireNonNull(this.a, "null reference");
            this.a.s().A(str, str2, bundle);
        }
    }

    @Keep
    public void setConditionalUserProperty(@RecentlyNonNull ConditionalUserProperty conditionalUserProperty) throws IllegalStateException {
        Objects.requireNonNull(conditionalUserProperty, "null reference");
        tz4 tz4Var = this.b;
        if (tz4Var != null) {
            tz4Var.c(conditionalUserProperty.a());
            return;
        }
        Objects.requireNonNull(this.a, "null reference");
        sz4 sz4VarS = this.a.s();
        sz4VarS.q(conditionalUserProperty.a(), sz4VarS.a.n.a());
    }

    public AppMeasurement(tz4 tz4Var) {
        Objects.requireNonNull(tz4Var, "null reference");
        this.b = tz4Var;
        this.a = null;
    }
}
