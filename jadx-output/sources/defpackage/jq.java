package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import defpackage.je7;
import java.util.List;

/* loaded from: classes.dex */
public final class jq<T> implements ob7<en> {
    public final /* synthetic */ kq a;
    public final /* synthetic */ jn b;

    public static final class a implements gn {
        public final /* synthetic */ nb7 a;
        public final /* synthetic */ en b;

        public a(nb7 nb7Var, en enVar) {
            this.a = nb7Var;
            this.b = enVar;
        }

        @Override // defpackage.gn
        public void a(in inVar) {
            im7.e(inVar, "result");
            int i = inVar.a;
            StringBuilder sbA = jo.A("onBillingSetupFinished response ", i, " isReady ");
            sbA.append(this.b.c());
            c88.a(sbA.toString(), new Object[0]);
            nb7 nb7Var = this.a;
            im7.d(nb7Var, "it");
            if (((je7.a) nb7Var).e()) {
                if (this.b.c()) {
                    this.b.b();
                }
            } else {
                if (i == 0) {
                    this.a.d(this.b);
                    return;
                }
                nb7 nb7Var2 = this.a;
                mq mqVarA = mq.a(inVar);
                if (((je7.a) nb7Var2).h(mqVarA)) {
                    return;
                }
                n56.z1(mqVarA);
            }
        }

        @Override // defpackage.gn
        public void b() {
            c88.a("onBillingServiceDisconnected", new Object[0]);
            nb7 nb7Var = this.a;
            im7.d(nb7Var, "it");
            if (((je7.a) nb7Var).e()) {
                return;
            }
            this.a.a();
        }
    }

    public static final class b implements sc7 {
        public final /* synthetic */ en a;

        public b(en enVar) {
            this.a = enVar;
        }

        @Override // defpackage.sc7
        public final void cancel() {
            c88.a("endConnection", new Object[0]);
            if (this.a.c()) {
                this.a.b();
            }
        }
    }

    public jq(kq kqVar, jn jnVar) {
        this.a = kqVar;
        this.b = jnVar;
    }

    @Override // defpackage.ob7
    public final void a(nb7<en> nb7Var) {
        ServiceInfo serviceInfo;
        im7.e(nb7Var, "it");
        Context context = this.a.a;
        jn jnVar = this.b;
        if (context == null) {
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
        if (jnVar == null) {
            throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
        }
        fn fnVar = new fn(null, context, jnVar);
        im7.d(fnVar, "BillingClient.newBuilder…                 .build()");
        c88.a("startConnection", new Object[0]);
        a aVar = new a(nb7Var, fnVar);
        if (fnVar.c()) {
            pr4.a("BillingClient", "Service connection is valid. No need to re-initialize.");
            aVar.a(un.k);
        } else {
            int i = fnVar.a;
            if (i == 1) {
                pr4.b("BillingClient", "Client is already in the process of connecting to billing service.");
                aVar.a(un.d);
            } else if (i == 3) {
                pr4.b("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                aVar.a(un.l);
            } else {
                fnVar.a = 1;
                yn ynVar = fnVar.d;
                xn xnVar = ynVar.b;
                Context context2 = ynVar.a;
                IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
                if (!xnVar.b) {
                    context2.registerReceiver(xnVar.c.b, intentFilter);
                    xnVar.b = true;
                }
                pr4.a("BillingClient", "Starting in-app billing setup.");
                fnVar.g = new tn(fnVar, aVar);
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                intent.setPackage("com.android.vending");
                List<ResolveInfo> listQueryIntentServices = fnVar.e.getPackageManager().queryIntentServices(intent, 0);
                if (listQueryIntentServices == null || listQueryIntentServices.isEmpty() || (serviceInfo = listQueryIntentServices.get(0).serviceInfo) == null) {
                    fnVar.a = 0;
                    pr4.a("BillingClient", "Billing service unavailable on device.");
                    aVar.a(un.c);
                } else {
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null) {
                        pr4.b("BillingClient", "The device doesn't have valid Play Store.");
                    } else {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra("playBillingLibraryVersion", fnVar.b);
                        if (fnVar.e.bindService(intent2, fnVar.g, 1)) {
                            pr4.a("BillingClient", "Service was bonded successfully.");
                        } else {
                            pr4.b("BillingClient", "Connection to Billing service is blocked.");
                        }
                    }
                    fnVar.a = 0;
                    pr4.a("BillingClient", "Billing service unavailable on device.");
                    aVar.a(un.c);
                }
            }
        }
        ((je7.a) nb7Var).f.b(new wc7(new b(fnVar)));
    }
}
