package com.michaelflisar.gdprdialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import defpackage.em6;
import defpackage.hm6;
import defpackage.pl6;
import defpackage.u;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class GDPRActivity extends AppCompatActivity implements pl6.b {
    public hm6 v;

    @Override // pl6.b
    public void h(em6 em6Var) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.v.a()) {
            return;
        }
        hm6 hm6Var = this.v;
        if (hm6Var.a.o && hm6Var.e == null) {
            return;
        }
        this.j.a();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        hm6 hm6Var = new hm6(getIntent().getExtras(), bundle);
        this.v = hm6Var;
        hm6Var.g(this, true);
        View viewInflate = LayoutInflater.from(this).inflate(R$layout.gdpr_dialog, (ViewGroup) null, false);
        this.v.b(this, viewInflate, new hm6.a() { // from class: ml6
            @Override // hm6.a
            public final void a() {
                this.a.y();
            }
        });
        setContentView(viewInflate);
        hm6 hm6Var2 = this.v;
        u uVarT = t();
        Objects.requireNonNull(hm6Var2);
        if (uVarT != null) {
            if (hm6Var2.a.t.b()) {
                uVarT.u(hm6Var2.a.t.a(this));
            } else {
                uVarT.t(R$string.gdpr_dialog_title);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        y();
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.v.f(bundle);
    }

    public final void y() {
        if (this.v.e == null) {
            finishAndRemoveTask();
        } else {
            finish();
        }
        this.v.e();
    }
}
