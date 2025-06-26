package com.noinnion.android.greader.client.rss.syndication.feed;

import android.os.Handler;
import java.util.AbstractQueue;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes2.dex */
public class EventDistributor extends Observable {
    public static final int DOWNLOADLOG_UPDATE = 8;
    public static final int DOWNLOAD_HANDLED = 64;
    public static final int DOWNLOAD_QUEUED = 32;
    public static final int FEED_LIST_UPDATE = 1;
    public static final int PLAYBACK_HISTORY_UPDATE = 16;
    public static final int QUEUE_UPDATE = 4;
    private static final String TAG = "EventDistributor";
    public static final int UNREAD_ITEMS_UPDATE = 2;
    private static EventDistributor instance;
    private Handler handler = new Handler();
    private AbstractQueue<Integer> events = new ConcurrentLinkedQueue();

    public static abstract class EventListener implements Observer {
        public abstract void update(EventDistributor eventDistributor, Integer num);

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            if ((observable instanceof EventDistributor) && (obj instanceof Integer)) {
                update((EventDistributor) observable, (Integer) obj);
            }
        }
    }

    private EventDistributor() {
    }

    public static synchronized EventDistributor getInstance() {
        if (instance == null) {
            instance = new EventDistributor();
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processEventQueue() {
        Integer numValueOf = 0;
        Integer numPoll = this.events.poll();
        while (numPoll != null) {
            numValueOf = Integer.valueOf(numValueOf.intValue() | numPoll.intValue());
            numPoll = this.events.poll();
        }
        if (numValueOf.intValue() != 0) {
            setChanged();
            notifyObservers(numValueOf);
        }
    }

    public void addEvent(Integer num) {
        this.events.offer(num);
        this.handler.post(new Runnable() { // from class: com.noinnion.android.greader.client.rss.syndication.feed.EventDistributor.1
            @Override // java.lang.Runnable
            public void run() {
                EventDistributor.this.processEventQueue();
            }
        });
    }

    @Override // java.util.Observable
    public void addObserver(Observer observer) {
        super.addObserver(observer);
        if (!(observer instanceof EventListener)) {
            throw new IllegalArgumentException("Observer must be instance of EventListener");
        }
    }

    public void register(EventListener eventListener) {
        addObserver(eventListener);
    }

    public void sendDownloadHandledBroadcast() {
        addEvent(64);
    }

    public void sendDownloadLogUpdateBroadcast() {
        addEvent(8);
    }

    public void sendDownloadQueuedBroadcast() {
        addEvent(32);
    }

    public void sendFeedUpdateBroadcast() {
        addEvent(1);
    }

    public void sendPlaybackHistoryUpdateBroadcast() {
        addEvent(16);
    }

    public void sendQueueUpdateBroadcast() {
        addEvent(4);
    }

    public void sendUnreadItemsUpdateBroadcast() {
        addEvent(2);
    }

    public void unregister(EventListener eventListener) {
        deleteObserver(eventListener);
    }
}
