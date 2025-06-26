package defpackage;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.miguelcatalan.materialsearchview.MaterialSearchView;
import java.util.Objects;

/* loaded from: classes.dex */
public class lm6 implements View.OnFocusChangeListener {
    public final /* synthetic */ MaterialSearchView e;

    public lm6(MaterialSearchView materialSearchView) {
        this.e = materialSearchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            MaterialSearchView materialSearchView = this.e;
            EditText editText = materialSearchView.l;
            Objects.requireNonNull(materialSearchView);
            editText.requestFocus();
            ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
            this.e.d();
        }
    }
}
