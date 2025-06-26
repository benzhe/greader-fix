package defpackage;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class k0 {
    public static final Class<?>[] b = {Context.class, AttributeSet.class};
    public static final int[] c = {R.attr.onClick};
    public static final String[] d = {"android.widget.", "android.view.", "android.webkit."};
    public static final m4<String, Constructor<? extends View>> e = new m4<>();
    public final Object[] a = new Object[2];

    public static class a implements View.OnClickListener {
        public final View e;
        public final String f;
        public Method g;
        public Context h;

        public a(View view, String str) {
            this.e = view;
            this.f = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            String string;
            Method method;
            if (this.g == null) {
                Context context = this.e.getContext();
                while (context != null) {
                    try {
                        if (!context.isRestricted() && (method = context.getClass().getMethod(this.f, View.class)) != null) {
                            this.g = method;
                            this.h = context;
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                    context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
                }
                int id = this.e.getId();
                if (id == -1) {
                    string = "";
                } else {
                    StringBuilder sbZ = jo.z(" with id '");
                    sbZ.append(this.e.getContext().getResources().getResourceEntryName(id));
                    sbZ.append("'");
                    string = sbZ.toString();
                }
                StringBuilder sbZ2 = jo.z("Could not find method ");
                sbZ2.append(this.f);
                sbZ2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                sbZ2.append(this.e.getClass());
                sbZ2.append(string);
                throw new IllegalStateException(sbZ2.toString());
            }
            try {
                this.g.invoke(this.h, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    public AppCompatAutoCompleteTextView a(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    public AppCompatButton b(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    public AppCompatCheckBox c(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    public AppCompatRadioButton d(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    public AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public View f() {
        return null;
    }

    public final View g(Context context, String str, String str2) throws InflateException, NoSuchMethodException, SecurityException, ClassNotFoundException {
        String str3;
        m4<String, Constructor<? extends View>> m4Var = e;
        Constructor<? extends View> orDefault = m4Var.getOrDefault(str, null);
        if (orDefault == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            orDefault = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            m4Var.put(str, orDefault);
        }
        orDefault.setAccessible(true);
        return orDefault.newInstance(this.a);
    }

    public final void h(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }
}
