package com.noinnion.android.reader.ui;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import defpackage.hc7;
import defpackage.iw6;
import defpackage.jw6;
import defpackage.lw6;
import defpackage.n56;

/* loaded from: classes2.dex */
public class BaseActivity extends AppCompatActivity {
    public final hc7 v = new hc7();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        y(bundle, true, false);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.v.d();
        super.onDestroy();
    }

    public final void y(Bundle bundle, boolean z, boolean z2) {
        if (z) {
            lw6.m(this, z2);
        }
        jw6.c(this, iw6.c(this));
        super.onCreate(bundle);
        if (iw6.N(this)) {
            n56.S1(this, true);
        }
    }
}
