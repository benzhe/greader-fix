package com.noinnion.android.greader.client.rss.syndication.namespace;

/* loaded from: classes2.dex */
public class SyndElement {
    public String name;
    public Namespace namespace;

    public SyndElement(String str, Namespace namespace) {
        this.name = str;
        this.namespace = namespace;
    }

    public String getName() {
        return this.name;
    }

    public Namespace getNamespace() {
        return this.namespace;
    }
}
