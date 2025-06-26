package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class rm4<FieldDescriptorType> extends pm4<FieldDescriptorType, Object> {
    public rm4(int i) {
        super(i, null);
    }

    @Override // defpackage.pm4
    public final void c() {
        if (!this.h) {
            for (int i = 0; i < e(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryD = d(i);
                if (((mk4) entryD.getKey()).d()) {
                    entryD.setValue(Collections.unmodifiableList((List) entryD.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : g()) {
                if (((mk4) entry.getKey()).d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.c();
    }
}
