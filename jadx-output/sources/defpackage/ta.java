package defpackage;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class ta {
    public final Object a;

    public static class a extends AccessibilityNodeProvider {
        public final ta a;

        public a(ta taVar) {
            this.a = taVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            sa saVarA = this.a.a(i);
            if (saVarA == null) {
                return null;
            }
            return saVarA.a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            Objects.requireNonNull(this.a);
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.a.c(i, i2, bundle);
        }
    }

    public static class b extends a {
        public b(ta taVar) {
            super(taVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            sa saVarB = this.a.b(i);
            if (saVarB == null) {
                return null;
            }
            return saVarB.a;
        }
    }

    public ta() {
        this.a = new b(this);
    }

    public sa a(int i) {
        return null;
    }

    public sa b(int i) {
        return null;
    }

    public boolean c(int i, int i2, Bundle bundle) {
        return false;
    }

    public ta(Object obj) {
        this.a = obj;
    }
}
