package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import defpackage.c50;
import defpackage.mf5;
import defpackage.n24;
import defpackage.q34;
import defpackage.tz4;
import defpackage.y96;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class FirebaseAnalytics {
    public static volatile FirebaseAnalytics b;
    public final q34 a;

    public FirebaseAnalytics(q34 q34Var) {
        Objects.requireNonNull(q34Var, "null reference");
        this.a = q34Var;
    }

    @Keep
    public static FirebaseAnalytics getInstance(@RecentlyNonNull Context context) {
        if (b == null) {
            synchronized (FirebaseAnalytics.class) {
                if (b == null) {
                    b = new FirebaseAnalytics(q34.g(context, null, null, null, null));
                }
            }
        }
        return b;
    }

    @Keep
    public static tz4 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        q34 q34VarG = q34.g(context, null, null, null, bundle);
        if (q34VarG == null) {
            return null;
        }
        return new mf5(q34VarG);
    }

    @RecentlyNonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) c50.e(y96.f().n(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(@RecentlyNonNull Activity activity, String str, String str2) {
        q34 q34Var = this.a;
        Objects.requireNonNull(q34Var);
        q34Var.c.execute(new n24(q34Var, activity, str, str2));
    }
}
