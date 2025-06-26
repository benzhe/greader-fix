package defpackage;

import android.view.KeyEvent;
import android.widget.TextView;
import com.miguelcatalan.materialsearchview.MaterialSearchView;

/* loaded from: classes.dex */
public class jm6 implements TextView.OnEditorActionListener {
    public final /* synthetic */ MaterialSearchView a;

    public jm6(MaterialSearchView materialSearchView) {
        this.a = materialSearchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        MaterialSearchView materialSearchView = this.a;
        int i2 = MaterialSearchView.C;
        materialSearchView.b();
        return true;
    }
}
