package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import defpackage.bs3;
import defpackage.is0;
import defpackage.os3;
import defpackage.wr3;
import defpackage.xk0;
import defpackage.y20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    public xk0 e;

    public final void a() {
        xk0 xk0Var = this.e;
        if (xk0Var != null) {
            try {
                xk0Var.zzdq();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onActivityResult(i, i2, intent);
            }
        } catch (Exception e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean zZzwh = true;
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                zZzwh = xk0Var.zzwh();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        if (zZzwh) {
            super.onBackPressed();
            try {
                xk0 xk0Var2 = this.e;
                if (xk0Var2 != null) {
                    xk0Var2.onBackPressed();
                }
            } catch (RemoteException e2) {
                is0.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.zzae(new y20(configuration));
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        wr3 wr3Var = os3.j.b;
        Objects.requireNonNull(wr3Var);
        bs3 bs3Var = new bs3(wr3Var, this);
        Intent intent = getIntent();
        boolean booleanExtra = false;
        if (intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            booleanExtra = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        } else {
            is0.zzex("useClientJar flag not found in activity intent extras.");
        }
        xk0 xk0VarB = bs3Var.b(this, booleanExtra);
        this.e = xk0VarB;
        if (xk0VarB == null) {
            is0.zze("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            xk0VarB.onCreate(bundle);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onDestroy();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onPause();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onRestart();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onResume();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onStart();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onStop();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            xk0 xk0Var = this.e;
            if (xk0Var != null) {
                xk0Var.onUserLeaveHint();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        a();
    }
}
