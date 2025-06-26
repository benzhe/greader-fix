package com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public class OggInputStream extends InputStream {
    private long bytesLeft;
    private InputStream input;
    private boolean isInPage = false;

    public OggInputStream(InputStream inputStream) {
        this.input = inputStream;
    }

    private void readOggPage() throws IOException {
        int[] iArr = new int[4];
        boolean z = false;
        while (true) {
            int i = this.input.read();
            if (i == -1) {
                break;
            }
            if (i == 79) {
                iArr[0] = i;
                z = true;
            } else if (i == 83) {
                iArr[3] = i;
            } else if (i != 103) {
                if (z) {
                    Arrays.fill(iArr, 0);
                    z = false;
                }
            } else if (iArr[1] != i) {
                iArr[1] = i;
            } else {
                iArr[2] = i;
            }
            if (iArr[0] == 79 && iArr[1] == 103 && iArr[2] == 103 && iArr[3] == 83) {
                break;
            }
        }
        IOUtils.skipFully(this.input, 22L);
        this.bytesLeft = 0L;
        int i2 = this.input.read();
        for (int i3 = 0; i3 < i2; i3++) {
            this.bytesLeft += this.input.read();
        }
        this.isInPage = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.isInPage) {
            readOggPage();
        }
        if (!this.isInPage || this.bytesLeft <= 0) {
            return -1;
        }
        int i = this.input.read();
        long j = this.bytesLeft - 1;
        this.bytesLeft = j;
        if (j == 0) {
            this.isInPage = false;
        }
        return i;
    }
}
