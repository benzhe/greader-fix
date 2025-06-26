package defpackage;

import defpackage.cj6;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class tk6<FieldDescriptorType> extends uk6<FieldDescriptorType, Object> {
    public tk6(int i) {
        super(i, null);
    }

    @Override // defpackage.uk6
    public void g() {
        if (!this.h) {
            for (int i = 0; i < d(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryC = c(i);
                if (((cj6.a) entryC.getKey()).o()) {
                    entryC.setValue(Collections.unmodifiableList((List) entryC.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : e()) {
                if (((cj6.a) entry.getKey()).o()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.g();
    }

    @Override // defpackage.uk6, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((cj6.a) obj, obj2);
    }
}
