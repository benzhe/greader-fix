package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class PendingPost {
    private static final List<PendingPost> pendingPostPool = new ArrayList();
    public Object event;
    public PendingPost next;
    public Subscription subscription;

    private PendingPost(Object obj, Subscription subscription) {
        this.event = obj;
        this.subscription = subscription;
    }

    public static PendingPost obtainPendingPost(Subscription subscription, Object obj) {
        List<PendingPost> list = pendingPostPool;
        synchronized (list) {
            int size = list.size();
            if (size <= 0) {
                return new PendingPost(obj, subscription);
            }
            PendingPost pendingPostRemove = list.remove(size - 1);
            pendingPostRemove.event = obj;
            pendingPostRemove.subscription = subscription;
            pendingPostRemove.next = null;
            return pendingPostRemove;
        }
    }

    public static void releasePendingPost(PendingPost pendingPost) {
        pendingPost.event = null;
        pendingPost.subscription = null;
        pendingPost.next = null;
        List<PendingPost> list = pendingPostPool;
        synchronized (list) {
            if (list.size() < 10000) {
                list.add(pendingPost);
            }
        }
    }
}
