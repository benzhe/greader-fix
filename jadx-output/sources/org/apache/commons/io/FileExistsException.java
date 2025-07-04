package org.apache.commons.io;

import defpackage.jo;
import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
public class FileExistsException extends IOException {
    private static final long serialVersionUID = 1;

    public FileExistsException() {
    }

    public FileExistsException(String str) {
        super(str);
    }

    public FileExistsException(File file) {
        super(jo.l("File ", file, " exists"));
    }
}
