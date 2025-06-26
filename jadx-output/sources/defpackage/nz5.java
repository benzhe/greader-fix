package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import defpackage.dy5;
import defpackage.r56;
import defpackage.uy5;
import defpackage.v26;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class nz5 implements View.OnClickListener {
    public final /* synthetic */ b96 e;
    public final /* synthetic */ Activity f;
    public final /* synthetic */ lz5 g;

    public nz5(lz5 lz5Var, b96 b96Var, Activity activity) {
        this.g = lz5Var;
        this.e = b96Var;
        this.f = activity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.g.o != null) {
            c50.w0("Calling callback for click action");
            uy5 uy5Var = this.g.o;
            final b96 b96Var = this.e;
            final j36 j36Var = (j36) uy5Var;
            if (!j36Var.f()) {
                j36Var.b("message click to metrics logger");
            } else if (b96Var.a == null) {
                j36Var.e(uy5.a.CLICK);
            } else {
                n56.t1("Attempting to record: message click to metrics logger");
                zd7 zd7Var = new zd7(new qc7(j36Var, b96Var) { // from class: e36
                    public final j36 a;
                    public final b96 b;

                    {
                        this.a = j36Var;
                        this.b = b96Var;
                    }

                    @Override // defpackage.qc7
                    public void run() {
                        j36 j36Var2 = this.a;
                        final b96 b96Var2 = this.b;
                        final r56 r56Var = j36Var2.f;
                        final j96 j96Var = j36Var2.h;
                        Objects.requireNonNull(r56Var);
                        if (!j96Var.b.c) {
                            r56Var.c.n().f(new b45(r56Var, j96Var) { // from class: p56
                                public final r56 a;
                                public final j96 b;

                                {
                                    this.a = r56Var;
                                    this.b = j96Var;
                                }

                                @Override // defpackage.b45
                                public void onSuccess(Object obj) {
                                    r56 r56Var2 = this.a;
                                    r56.a aVar = r56Var2.a;
                                    my5 my5Var = my5.CLICK_EVENT_TYPE;
                                    dy5.b bVarA = r56Var2.a(this.b, (String) obj);
                                    bVarA.o();
                                    dy5.D((dy5) bVarA.f, my5Var);
                                    ((x86) aVar).a(bVarA.l().b());
                                }
                            });
                            r56Var.c(j96Var, "fiam_action", true);
                        }
                        for (final v26.a aVar : r56Var.f.a.values()) {
                            ThreadPoolExecutor threadPoolExecutor = v26.f;
                            Objects.requireNonNull(aVar);
                            threadPoolExecutor.execute(new Runnable(aVar, j96Var, b96Var2) { // from class: t26
                                public final v26.a e;
                                public final j96 f;
                                public final b96 g;

                                {
                                    this.e = aVar;
                                    this.f = j96Var;
                                    this.g = b96Var2;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    v26.a aVar2 = this.e;
                                    BlockingQueue<Runnable> blockingQueue = v26.e;
                                    Objects.requireNonNull(aVar2);
                                    throw null;
                                }
                            });
                        }
                    }
                });
                if (!j36.j) {
                    j36Var.a();
                }
                j36.d(zd7Var.k(), j36Var.c.a);
            }
        }
        lz5 lz5Var = this.g;
        Activity activity = this.f;
        Uri uri = Uri.parse(this.e.a);
        Objects.requireNonNull(lz5Var);
        new Intent("android.support.customtabs.action.CustomTabsService").setPackage("com.android.chrome");
        if (!activity.getPackageManager().queryIntentServices(r10, 0).isEmpty()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
            intent.putExtras(new Bundle());
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            intent.setData(uri);
            Object obj = u7.a;
            activity.startActivity(intent, null);
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW", uri);
            ResolveInfo resolveInfoResolveActivity = activity.getPackageManager().resolveActivity(intent2, 0);
            intent2.addFlags(1073741824);
            intent2.addFlags(268435456);
            if (resolveInfoResolveActivity != null) {
                activity.startActivity(intent2);
            } else {
                Log.e("FIAM.Display", "Device cannot resolve intent for: android.intent.action.VIEW");
            }
        }
        Objects.requireNonNull(this.g);
        this.g.d(this.f);
        lz5 lz5Var2 = this.g;
        lz5Var2.n = null;
        lz5Var2.o = null;
    }
}
