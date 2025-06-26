package defpackage;

import android.content.res.Resources;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public class ec5 extends bc5 {
    public final TextWatcher d;
    public final TextInputLayout.f e;
    public final TextInputLayout.g f;

    public class a extends s85 {
        public a() {
        }

        @Override // defpackage.s85, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ec5.this.c.setChecked(!ec5.e(r1));
        }
    }

    public class b implements TextInputLayout.f {
        public b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) throws Resources.NotFoundException {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(true);
            textInputLayout.setEndIconCheckable(true);
            ec5.this.c.setChecked(!ec5.e(r4));
            editText.removeTextChangedListener(ec5.this.d);
            editText.addTextChangedListener(ec5.this.d);
        }
    }

    public class c implements TextInputLayout.g {

        public class a implements Runnable {
            public final /* synthetic */ EditText e;

            public a(EditText editText) {
                this.e = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.e.removeTextChangedListener(ec5.this.d);
            }
        }

        public c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = ec5.this.a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (ec5.e(ec5.this)) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            ec5.this.a.o();
        }
    }

    public ec5(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.d = new a();
        this.e = new b();
        this.f = new c();
    }

    public static boolean e(ec5 ec5Var) {
        EditText editText = ec5Var.a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    @Override // defpackage.bc5
    public void a() {
        this.a.setEndIconDrawable(p0.b(this.b, R$drawable.design_password_eye));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R$string.password_toggle_content_description));
        this.a.setEndIconOnClickListener(new d());
        this.a.a(this.e);
        this.a.k0.add(this.f);
        EditText editText = this.a.getEditText();
        if (editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
