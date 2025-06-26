package defpackage;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.core.R$id;
import defpackage.ha;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class y9 {
    public static boolean a = false;
    public static Method b = null;
    public static boolean c = false;
    public static Field d;

    public interface a {
        boolean j(KeyEvent keyEvent);
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        int iIndexOfKey;
        AtomicInteger atomicInteger = ha.a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList<WeakReference<View>> arrayList = ha.d.d;
            int i = R$id.tag_unhandled_key_event_manager;
            ha.d dVar = (ha.d) view.getTag(i);
            if (dVar == null) {
                dVar = new ha.d();
                view.setTag(i, dVar);
            }
            WeakReference<KeyEvent> weakReference = dVar.c;
            if (weakReference == null || weakReference.get() != keyEvent) {
                dVar.c = new WeakReference<>(keyEvent);
                WeakReference<View> weakReferenceValueAt = null;
                if (dVar.b == null) {
                    dVar.b = new SparseArray<>();
                }
                SparseArray<WeakReference<View>> sparseArray = dVar.b;
                if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReferenceValueAt = sparseArray.valueAt(iIndexOfKey);
                    sparseArray.removeAt(iIndexOfKey);
                }
                if (weakReferenceValueAt == null) {
                    weakReferenceValueAt = sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReferenceValueAt != null) {
                    View view2 = weakReferenceValueAt.get();
                    if (view2 == null || !view2.isAttachedToWindow()) {
                        return true;
                    }
                    dVar.b(view2, keyEvent);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean b(a aVar, View view, Window.Callback callback, KeyEvent keyEvent) throws NoSuchFieldException {
        DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (aVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return aVar.j(keyEvent);
        }
        if (callback instanceof Activity) {
            Activity activity = (Activity) callback;
            activity.onUserInteraction();
            Window window = activity.getWindow();
            if (window.hasFeature(8)) {
                ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                    if (!a) {
                        try {
                            b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                        } catch (NoSuchMethodException unused) {
                        }
                        a = true;
                    }
                    Method method = b;
                    if (method != null) {
                        try {
                            zBooleanValue = ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                    if (zBooleanValue) {
                        return true;
                    }
                }
            }
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (ha.f(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
        }
        if (!(callback instanceof Dialog)) {
            return (view != null && ha.f(view, keyEvent)) || aVar.j(keyEvent);
        }
        Dialog dialog = (Dialog) callback;
        if (!c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            c = true;
        }
        Field field = d;
        if (field != null) {
            try {
                onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException unused4) {
            }
        } else {
            onKeyListener = null;
        }
        if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window2 = dialog.getWindow();
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView2 = window2.getDecorView();
        if (ha.f(decorView2, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
    }
}
