package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepName;
import defpackage.fy;
import defpackage.zy;

@KeepName
/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {
    public static final /* synthetic */ int f = 0;
    public int e = 0;

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.e = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                zy zyVarA = zy.a(this);
                if (i2 == -1) {
                    Handler handler = zyVarA.n;
                    handler.sendMessage(handler.obtainMessage(3));
                } else if (i2 == 0) {
                    ConnectionResult connectionResult = new ConnectionResult(13, null);
                    int intExtra = getIntent().getIntExtra("failing_client_id", -1);
                    if (!zyVarA.c(connectionResult, intExtra)) {
                        Handler handler2 = zyVarA.n;
                        handler2.sendMessage(handler2.obtainMessage(5, intExtra, 0, connectionResult));
                    }
                }
            }
        } else if (i == 2) {
            this.e = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.e = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws IntentSender.SendIntentException {
        super.onCreate(bundle);
        if (bundle != null) {
            this.e = bundle.getInt("resolution");
        }
        if (this.e != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e("GoogleApiActivity", "Activity started without extras");
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                Log.e("GoogleApiActivity", "Activity started without resolution");
                finish();
                return;
            }
            if (pendingIntent == null) {
                Object obj = fy.c;
                fy.d.e(this, num.intValue(), 2, this);
                this.e = 1;
            } else {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.e = 1;
                } catch (IntentSender.SendIntentException e) {
                    Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e);
                    finish();
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.e);
        super.onSaveInstanceState(bundle);
    }
}
