package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R$id;
import defpackage.sa;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class v9 {
    public static final View.AccessibilityDelegate c = new View.AccessibilityDelegate();
    public final View.AccessibilityDelegate a;
    public final View.AccessibilityDelegate b;

    public static final class a extends View.AccessibilityDelegate {
        public final v9 a;

        public a(v9 v9Var) {
            this.a = v9Var;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.a.a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            ta taVarB = this.a.b(view);
            if (taVarB != null) {
                return (AccessibilityNodeProvider) taVarB.a;
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.a.c(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            int iKeyAt;
            sa saVar = new sa(accessibilityNodeInfo);
            AtomicInteger atomicInteger = ha.a;
            Boolean boolC = new ia(R$id.tag_screen_reader_focusable, Boolean.class, 28).c(view);
            boolean zBooleanValue = boolC == null ? false : boolC.booleanValue();
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                saVar.a.setScreenReaderFocusable(zBooleanValue);
            } else {
                saVar.r(1, zBooleanValue);
            }
            Boolean boolC2 = new ka(R$id.tag_accessibility_heading, Boolean.class, 28).c(view);
            boolean zBooleanValue2 = boolC2 == null ? false : boolC2.booleanValue();
            if (i >= 28) {
                saVar.a.setHeading(zBooleanValue2);
            } else {
                saVar.r(2, zBooleanValue2);
            }
            CharSequence charSequenceC = new ja(R$id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view);
            if (i >= 28) {
                saVar.a.setPaneTitle(charSequenceC);
            } else {
                saVar.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequenceC);
            }
            this.a.d(view, saVar);
            CharSequence text = accessibilityNodeInfo.getText();
            if (i < 26) {
                saVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                saVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                saVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                saVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view.getTag(R$id.tag_accessibility_clickable_spans);
                if (sparseArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                        if (((WeakReference) sparseArray.valueAt(i2)).get() == null) {
                            arrayList.add(Integer.valueOf(i2));
                        }
                    }
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        sparseArray.remove(((Integer) arrayList.get(i3)).intValue());
                    }
                }
                ClickableSpan[] clickableSpanArrF = sa.f(text);
                if (clickableSpanArrF != null && clickableSpanArrF.length > 0) {
                    saVar.h().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R$id.accessibility_action_clickable_span);
                    int i4 = R$id.tag_accessibility_clickable_spans;
                    SparseArray sparseArray2 = (SparseArray) view.getTag(i4);
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        view.setTag(i4, sparseArray2);
                    }
                    for (int i5 = 0; i5 < clickableSpanArrF.length; i5++) {
                        ClickableSpan clickableSpan = clickableSpanArrF[i5];
                        int i6 = 0;
                        while (true) {
                            if (i6 >= sparseArray2.size()) {
                                iKeyAt = sa.d;
                                sa.d = iKeyAt + 1;
                                break;
                            } else {
                                if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i6)).get())) {
                                    iKeyAt = sparseArray2.keyAt(i6);
                                    break;
                                }
                                i6++;
                            }
                        }
                        sparseArray2.put(iKeyAt, new WeakReference(clickableSpanArrF[i5]));
                        ClickableSpan clickableSpan2 = clickableSpanArrF[i5];
                        Spanned spanned = (Spanned) text;
                        saVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        saVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        saVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        saVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(iKeyAt));
                    }
                }
            }
            List listEmptyList = (List) view.getTag(R$id.tag_accessibility_actions);
            if (listEmptyList == null) {
                listEmptyList = Collections.emptyList();
            }
            for (int i7 = 0; i7 < listEmptyList.size(); i7++) {
                saVar.a((sa.a) listEmptyList.get(i7));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.a.e(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.a.f(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.a.g(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(View view, int i) {
            this.a.h(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.a.i(view, accessibilityEvent);
        }
    }

    public v9() {
        this.a = c;
        this.b = new a(this);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public ta b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new ta(accessibilityNodeProvider);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, sa saVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, saVar.a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g(android.view.View r9, int r10, android.os.Bundle r11) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r8 = this;
            int r0 = androidx.core.R$id.tag_accessibility_actions
            java.lang.Object r0 = r9.getTag(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto Le
            java.util.List r0 = java.util.Collections.emptyList()
        Le:
            r1 = 0
            r2 = 0
        L10:
            int r3 = r0.size()
            if (r2 >= r3) goto L6f
            java.lang.Object r3 = r0.get(r2)
            sa$a r3 = (sa.a) r3
            int r4 = r3.a()
            if (r4 != r10) goto L6c
            ua r0 = r3.d
            if (r0 == 0) goto L6f
            r0 = 0
            java.lang.Class<? extends ua$a> r2 = r3.c
            if (r2 == 0) goto L65
            java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L3f
            java.lang.reflect.Constructor r2 = r2.getDeclaredConstructor(r4)     // Catch: java.lang.Exception -> L3f
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L3f
            java.lang.Object r2 = r2.newInstance(r4)     // Catch: java.lang.Exception -> L3f
            ua$a r2 = (ua.a) r2     // Catch: java.lang.Exception -> L3f
            java.util.Objects.requireNonNull(r2)     // Catch: java.lang.Exception -> L3d
            goto L64
        L3d:
            r0 = move-exception
            goto L43
        L3f:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
        L43:
            java.lang.Class<? extends ua$a> r4 = r3.c
            if (r4 != 0) goto L4a
            java.lang.String r4 = "null"
            goto L4e
        L4a:
            java.lang.String r4 = r4.getName()
        L4e:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to execute command with argument class ViewCommandArgument: "
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "A11yActionCompat"
            android.util.Log.e(r5, r4, r0)
        L64:
            r0 = r2
        L65:
            ua r2 = r3.d
            boolean r0 = r2.a(r9, r0)
            goto L70
        L6c:
            int r2 = r2 + 1
            goto L10
        L6f:
            r0 = 0
        L70:
            if (r0 != 0) goto L78
            android.view.View$AccessibilityDelegate r0 = r8.a
            boolean r0 = r0.performAccessibilityAction(r9, r10, r11)
        L78:
            if (r0 != 0) goto Lc7
            int r2 = androidx.core.R$id.accessibility_action_clickable_span
            if (r10 != r2) goto Lc7
            r10 = -1
            java.lang.String r0 = "ACCESSIBILITY_CLICKABLE_SPAN_ID"
            int r10 = r11.getInt(r0, r10)
            int r11 = androidx.core.R$id.tag_accessibility_clickable_spans
            java.lang.Object r11 = r9.getTag(r11)
            android.util.SparseArray r11 = (android.util.SparseArray) r11
            r0 = 1
            if (r11 == 0) goto Lc6
            java.lang.Object r10 = r11.get(r10)
            java.lang.ref.WeakReference r10 = (java.lang.ref.WeakReference) r10
            if (r10 == 0) goto Lc6
            java.lang.Object r10 = r10.get()
            android.text.style.ClickableSpan r10 = (android.text.style.ClickableSpan) r10
            if (r10 == 0) goto Lbf
            android.view.accessibility.AccessibilityNodeInfo r11 = r9.createAccessibilityNodeInfo()
            java.lang.CharSequence r11 = r11.getText()
            android.text.style.ClickableSpan[] r11 = defpackage.sa.f(r11)
            r2 = 0
        Lad:
            if (r11 == 0) goto Lbf
            int r3 = r11.length
            if (r2 >= r3) goto Lbf
            r3 = r11[r2]
            boolean r3 = r10.equals(r3)
            if (r3 == 0) goto Lbc
            r11 = 1
            goto Lc0
        Lbc:
            int r2 = r2 + 1
            goto Lad
        Lbf:
            r11 = 0
        Lc0:
            if (r11 == 0) goto Lc6
            r10.onClick(r9)
            r1 = 1
        Lc6:
            r0 = r1
        Lc7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v9.g(android.view.View, int, android.os.Bundle):boolean");
    }

    public void h(View view, int i) {
        this.a.sendAccessibilityEvent(view, i);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public v9(View.AccessibilityDelegate accessibilityDelegate) {
        this.a = accessibilityDelegate;
        this.b = new a(this);
    }
}
