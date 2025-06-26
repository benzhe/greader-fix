package com.noinnion.android.reader.ui;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import com.noinnion.android.reader.R$bool;
import com.noinnion.android.reader.R$integer;
import com.noinnion.android.reader.R$style;
import defpackage.hc7;
import defpackage.im7;
import defpackage.iw6;
import defpackage.jw6;
import defpackage.lw6;
import defpackage.n56;

/* loaded from: classes2.dex */
public class BaseDialogActivity extends AppCompatActivity {
    public boolean w;
    public a v = a.WRAP_CONTENT;
    public final hc7 x = new hc7();

    public enum a {
        WRAP_CONTENT,
        FILL_CONTENT,
        WHEN_LARGE
    }

    public final void A(Bundle bundle, boolean z) {
        boolean z2 = getResources().getBoolean(R$bool.isTablet);
        this.w = z2;
        if (z) {
            if (this.v != a.WHEN_LARGE || z2) {
                int iD = iw6.d(this);
                if (iD == 1 || iD == 2) {
                    setTheme(R$style.AppTheme_Dark_Dialog);
                } else if (iD == 3) {
                    setTheme(R$style.AppTheme_Sepia_Dialog);
                } else if (iD != 5) {
                    setTheme(R$style.AppTheme_Default_Dialog);
                } else {
                    setTheme(R$style.AppTheme_Green_Dialog);
                }
                lw6.a = iD;
            } else {
                lw6.m(this, false);
            }
        }
        jw6.c(this, iw6.c(this));
        super.onCreate(bundle);
        if (iw6.N(this)) {
            n56.S1(this, true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        im7.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        y();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        A(bundle, true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.x.d();
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        y();
    }

    public final void y() {
        int iO0;
        int iW0 = n56.W0(this);
        int iOrdinal = this.v.ordinal();
        if (iOrdinal == 1) {
            iO0 = iW0 - n56.o0(this, getResources().getInteger(R$integer.dialog_border_min));
            getWindow().setLayout(iO0, -2);
        } else if (iOrdinal != 2) {
            iO0 = iW0 - n56.o0(this, getResources().getInteger(R$integer.dialog_border_min));
            if (n56.l1(this)) {
                iO0 = Math.min(iO0, n56.o0(this, getResources().getInteger(R$integer.dialog_border_max)));
            }
            getWindow().setLayout(iO0, -2);
        } else {
            boolean z = !n56.n1(this);
            if (this.w || z) {
                iO0 = iW0 - n56.o0(this, getResources().getInteger(R$integer.dialog_border_min));
                if (n56.l1(this)) {
                    iO0 = Math.min(iO0, n56.o0(this, getResources().getInteger(R$integer.dialog_border_max)));
                }
            } else {
                iO0 = iW0;
            }
            getWindow().setLayout(iO0, -1);
        }
        if (iO0 == iW0) {
            getWindow().clearFlags(2);
            Window window = getWindow();
            im7.d(window, "window");
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = 1.0f;
            attributes.dimAmount = 0.0f;
            Window window2 = getWindow();
            im7.d(window2, "window");
            window2.setAttributes(attributes);
            return;
        }
        getWindow().setFlags(2, 2);
        Window window3 = getWindow();
        im7.d(window3, "window");
        WindowManager.LayoutParams attributes2 = window3.getAttributes();
        attributes2.alpha = 1.0f;
        attributes2.dimAmount = 0.5f;
        Window window4 = getWindow();
        im7.d(window4, "window");
        window4.setAttributes(attributes2);
    }

    public final void z(Bundle bundle, a aVar) {
        im7.e(aVar, "dialogDimension");
        this.v = aVar;
        A(bundle, true);
    }
}
