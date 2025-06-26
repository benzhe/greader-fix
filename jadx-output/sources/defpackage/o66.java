package defpackage;

import android.app.Application;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class o66 {
    public final pe5 a;

    public o66(pe5 pe5Var) {
        this.a = pe5Var;
    }

    public boolean a(String str, boolean z) {
        pe5 pe5Var = this.a;
        pe5Var.a();
        SharedPreferences sharedPreferences = ((Application) pe5Var.a).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        if (sharedPreferences.contains(str)) {
            return sharedPreferences.getBoolean(str, z);
        }
        b(str, z);
        return z;
    }

    public void b(String str, boolean z) {
        pe5 pe5Var = this.a;
        pe5Var.a();
        SharedPreferences.Editor editorEdit = ((Application) pe5Var.a).getSharedPreferences("com.google.firebase.inappmessaging", 0).edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }
}
