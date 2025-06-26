package defpackage;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.net.Uri;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay;
import com.google.firebase.inappmessaging.display.R$drawable;
import com.google.firebase.inappmessaging.model.MessageType;
import defpackage.b16;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class lz5 extends e06 {
    public final ty5 e;
    public final Map<String, jj7<f06>> f;
    public final yz5 g;
    public final i06 h;
    public final i06 i;
    public final c06 j;
    public final tz5 k;
    public final Application l;
    public final wz5 m;
    public j96 n;
    public uy5 o;
    public String p;

    public class a implements Runnable {
        public final /* synthetic */ Activity e;
        public final /* synthetic */ q06 f;

        public a(Activity activity, q06 q06Var) {
            this.e = activity;
            this.f = q06Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            h96 h96VarA;
            i27 i27Var;
            View.OnClickListener nz5Var;
            lz5 lz5Var = lz5.this;
            Activity activity = this.e;
            q06 q06Var = this.f;
            Objects.requireNonNull(lz5Var);
            View.OnClickListener mz5Var = new mz5(lz5Var, activity);
            HashMap map = new HashMap();
            j96 j96Var = lz5Var.n;
            ArrayList arrayList = new ArrayList();
            int iOrdinal = j96Var.a.ordinal();
            if (iOrdinal == 1) {
                arrayList.add(((k96) j96Var).f);
            } else if (iOrdinal == 2) {
                arrayList.add(((i96) j96Var).d);
            } else if (iOrdinal == 3) {
                arrayList.add(((d96) j96Var).f);
            } else if (iOrdinal != 4) {
                arrayList.add(new b96(null, null, null));
            } else {
                g96 g96Var = (g96) j96Var;
                arrayList.add(g96Var.f);
                arrayList.add(g96Var.g);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                b96 b96Var = (b96) it.next();
                if (b96Var == null || TextUtils.isEmpty(b96Var.a)) {
                    c50.w0("No action url found for action. Treating as dismiss.");
                    nz5Var = mz5Var;
                } else {
                    nz5Var = new nz5(lz5Var, b96Var, activity);
                }
                map.put(b96Var, nz5Var);
            }
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListenerG = q06Var.g(map, mz5Var);
            if (onGlobalLayoutListenerG != null) {
                q06Var.e().getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListenerG);
            }
            j96 j96Var2 = lz5Var.n;
            if (j96Var2.a == MessageType.CARD) {
                g96 g96Var2 = (g96) j96Var2;
                h96VarA = g96Var2.h;
                h96 h96Var = g96Var2.i;
                if (lz5Var.l.getResources().getConfiguration().orientation != 1 ? lz5Var.c(h96Var) : !lz5Var.c(h96VarA)) {
                    h96VarA = h96Var;
                }
            } else {
                h96VarA = j96Var2.a();
            }
            oz5 oz5Var = new oz5(lz5Var, q06Var, activity, onGlobalLayoutListenerG);
            if (!lz5Var.c(h96VarA)) {
                oz5Var.a();
                return;
            }
            yz5 yz5Var = lz5Var.g;
            String str = h96VarA.a;
            e27 e27Var = yz5Var.a;
            Objects.requireNonNull(e27Var);
            if (str == null) {
                i27Var = new i27(e27Var, null, 0);
            } else {
                if (str.trim().length() == 0) {
                    throw new IllegalArgumentException("Path must not be empty.");
                }
                i27Var = new i27(e27Var, Uri.parse(str), 0);
            }
            Class<?> cls = activity.getClass();
            if (cls == null) {
                throw new IllegalArgumentException("Tag invalid.");
            }
            if (i27Var.d != null) {
                throw new IllegalStateException("Tag already set.");
            }
            i27Var.d = cls;
            int i = R$drawable.image_placeholder;
            if (i == 0) {
                throw new IllegalArgumentException("Placeholder image resource invalid.");
            }
            i27Var.c = i;
            i27Var.b(q06Var.e(), oz5Var);
        }
    }

    public lz5(ty5 ty5Var, Map<String, jj7<f06>> map, yz5 yz5Var, i06 i06Var, i06 i06Var2, c06 c06Var, Application application, tz5 tz5Var, wz5 wz5Var) {
        this.e = ty5Var;
        this.f = map;
        this.g = yz5Var;
        this.h = i06Var;
        this.i = i06Var2;
        this.j = c06Var;
        this.l = application;
        this.k = tz5Var;
        this.m = wz5Var;
    }

    public static void a(lz5 lz5Var, Activity activity) {
        Objects.requireNonNull(lz5Var);
        c50.s0("Dismissing fiam");
        lz5Var.d(activity);
        lz5Var.n = null;
        lz5Var.o = null;
    }

    public final void b() {
        i06 i06Var = this.h;
        CountDownTimer countDownTimer = i06Var.a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            i06Var.a = null;
        }
        i06 i06Var2 = this.i;
        CountDownTimer countDownTimer2 = i06Var2.a;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
            i06Var2.a = null;
        }
    }

    public final boolean c(h96 h96Var) {
        return (h96Var == null || TextUtils.isEmpty(h96Var.a)) ? false : true;
    }

    public final void d(Activity activity) {
        if (this.j.c()) {
            c06 c06Var = this.j;
            if (c06Var.c()) {
                c06Var.b(activity).removeViewImmediate(c06Var.a.f());
                c06Var.a = null;
            }
            b();
        }
    }

    public final void e(Activity activity) {
        v06 v06Var;
        j96 j96Var = this.n;
        if (j96Var == null) {
            Log.e("FIAM.Display", "No active message found to render");
            return;
        }
        Objects.requireNonNull(this.e);
        if (j96Var.a.equals(MessageType.UNSUPPORTED)) {
            Log.e("FIAM.Display", "The message being triggered is not supported by this version of the sdk.");
            return;
        }
        Map<String, jj7<f06>> map = this.f;
        MessageType messageType = this.n.a;
        String str = null;
        if (this.l.getResources().getConfiguration().orientation == 1) {
            int iOrdinal = messageType.ordinal();
            if (iOrdinal == 1) {
                str = "MODAL_PORTRAIT";
            } else if (iOrdinal == 2) {
                str = "IMAGE_ONLY_PORTRAIT";
            } else if (iOrdinal == 3) {
                str = "BANNER_PORTRAIT";
            } else if (iOrdinal == 4) {
                str = "CARD_PORTRAIT";
            }
        } else {
            int iOrdinal2 = messageType.ordinal();
            if (iOrdinal2 == 1) {
                str = "MODAL_LANDSCAPE";
            } else if (iOrdinal2 == 2) {
                str = "IMAGE_ONLY_LANDSCAPE";
            } else if (iOrdinal2 == 3) {
                str = "BANNER_LANDSCAPE";
            } else if (iOrdinal2 == 4) {
                str = "CARD_LANDSCAPE";
            }
        }
        f06 f06Var = map.get(str).get();
        int iOrdinal3 = this.n.a.ordinal();
        if (iOrdinal3 == 1) {
            tz5 tz5Var = this.k;
            j96 j96Var2 = this.n;
            b16.b bVarA = b16.a();
            bVarA.a = new t16(j96Var2, f06Var, tz5Var.a);
            v06Var = ((b16) bVarA.a()).e.get();
        } else if (iOrdinal3 == 2) {
            tz5 tz5Var2 = this.k;
            j96 j96Var3 = this.n;
            b16.b bVarA2 = b16.a();
            bVarA2.a = new t16(j96Var3, f06Var, tz5Var2.a);
            v06Var = ((b16) bVarA2.a()).d.get();
        } else if (iOrdinal3 == 3) {
            tz5 tz5Var3 = this.k;
            j96 j96Var4 = this.n;
            b16.b bVarA3 = b16.a();
            bVarA3.a = new t16(j96Var4, f06Var, tz5Var3.a);
            v06Var = ((b16) bVarA3.a()).f.get();
        } else {
            if (iOrdinal3 != 4) {
                Log.e("FIAM.Display", "No bindings found for this message type");
                return;
            }
            tz5 tz5Var4 = this.k;
            j96 j96Var5 = this.n;
            b16.b bVarA4 = b16.a();
            bVarA4.a = new t16(j96Var5, f06Var, tz5Var4.a);
            v06Var = ((b16) bVarA4.a()).g.get();
        }
        activity.findViewById(R.id.content).post(new a(activity, v06Var));
    }

    @Override // defpackage.e06, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        String str = this.p;
        if (str != null && str.equals(activity.getLocalClassName())) {
            StringBuilder sbZ = jo.z("Unbinding from activity: ");
            sbZ.append(activity.getLocalClassName());
            c50.w0(sbZ.toString());
            ty5 ty5Var = this.e;
            Objects.requireNonNull(ty5Var);
            n56.u1("Removing display event component");
            ty5Var.d = null;
            yz5 yz5Var = this.g;
            Class<?> cls = activity.getClass();
            e27 e27Var = yz5Var.a;
            Objects.requireNonNull(e27Var);
            p27.a();
            if (cls == null) {
                throw new IllegalArgumentException("Cannot cancel requests with null tag.");
            }
            ArrayList arrayList = new ArrayList(e27Var.i.values());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                l17 l17Var = (l17) arrayList.get(i);
                if (cls.equals(l17Var.j)) {
                    e27Var.a(l17Var.d());
                }
            }
            ArrayList arrayList2 = new ArrayList(e27Var.j.values());
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                s17 s17Var = (s17) arrayList2.get(i2);
                if (cls.equals(s17Var.e.d)) {
                    s17Var.a();
                }
            }
            d(activity);
            this.p = null;
        }
        v26 v26Var = this.e.b;
        v26Var.a.clear();
        v26Var.d.clear();
        v26Var.c.clear();
        super.onActivityPaused(activity);
    }

    @Override // defpackage.e06, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(final Activity activity) {
        super.onActivityResumed(activity);
        String str = this.p;
        if (str == null || !str.equals(activity.getLocalClassName())) {
            StringBuilder sbZ = jo.z("Binding to activity: ");
            sbZ.append(activity.getLocalClassName());
            c50.w0(sbZ.toString());
            ty5 ty5Var = this.e;
            FirebaseInAppMessagingDisplay firebaseInAppMessagingDisplay = new FirebaseInAppMessagingDisplay(this, activity) { // from class: kz5
                public final lz5 e;
                public final Activity f;

                {
                    this.e = this;
                    this.f = activity;
                }

                @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplay
                public void displayMessage(j96 j96Var, uy5 uy5Var) {
                    lz5 lz5Var = this.e;
                    Activity activity2 = this.f;
                    if (lz5Var.n != null) {
                        c50.s0("Active FIAM exists. Skipping trigger");
                        return;
                    }
                    Objects.requireNonNull(lz5Var.e);
                    lz5Var.n = j96Var;
                    lz5Var.o = uy5Var;
                    lz5Var.e(activity2);
                }
            };
            Objects.requireNonNull(ty5Var);
            n56.u1("Setting display event component");
            ty5Var.d = firebaseInAppMessagingDisplay;
            this.p = activity.getLocalClassName();
        }
        if (this.n != null) {
            e(activity);
        }
    }
}
