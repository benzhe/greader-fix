package org.greenrobot.eventbus;

import android.os.Looper;
import android.util.Log;
import defpackage.jo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import org.greenrobot.eventbus.meta.SubscriberInfoIndex;

/* loaded from: classes2.dex */
public class EventBus {
    public static String TAG = "EventBus";
    public static volatile EventBus defaultInstance;
    private final AsyncPoster asyncPoster;
    private final BackgroundPoster backgroundPoster;
    private final ThreadLocal<PostingThreadState> currentPostingThreadState;
    private final boolean eventInheritance;
    private final ExecutorService executorService;
    private final int indexCount;
    private final boolean logNoSubscriberMessages;
    private final boolean logSubscriberExceptions;
    private final HandlerPoster mainThreadPoster;
    private final boolean sendNoSubscriberEvent;
    private final boolean sendSubscriberExceptionEvent;
    private final Map<Class<?>, Object> stickyEvents;
    private final SubscriberMethodFinder subscriberMethodFinder;
    private final Map<Class<?>, CopyOnWriteArrayList<Subscription>> subscriptionsByEventType;
    private final boolean throwSubscriberException;
    private final Map<Object, List<Class<?>>> typesBySubscriber;
    private static final EventBusBuilder DEFAULT_BUILDER = new EventBusBuilder();
    private static final Map<Class<?>, List<Class<?>>> eventTypesCache = new HashMap();

    /* renamed from: org.greenrobot.eventbus.EventBus$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$org$greenrobot$eventbus$ThreadMode;

        static {
            ThreadMode.values();
            int[] iArr = new int[4];
            $SwitchMap$org$greenrobot$eventbus$ThreadMode = iArr;
            try {
                ThreadMode threadMode = ThreadMode.POSTING;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$org$greenrobot$eventbus$ThreadMode;
                ThreadMode threadMode2 = ThreadMode.MAIN;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$org$greenrobot$eventbus$ThreadMode;
                ThreadMode threadMode3 = ThreadMode.BACKGROUND;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$org$greenrobot$eventbus$ThreadMode;
                ThreadMode threadMode4 = ThreadMode.ASYNC;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface PostCallback {
        void onPostCompleted(List<SubscriberExceptionEvent> list);
    }

    public static final class PostingThreadState {
        public boolean canceled;
        public Object event;
        public final List<Object> eventQueue = new ArrayList();
        public boolean isMainThread;
        public boolean isPosting;
        public Subscription subscription;
    }

    public EventBus() {
        this(DEFAULT_BUILDER);
    }

    public static void addInterfaces(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                addInterfaces(list, cls.getInterfaces());
            }
        }
    }

    public static EventBusBuilder builder() {
        return new EventBusBuilder();
    }

    private void checkPostStickyEventToSubscription(Subscription subscription, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (obj != null) {
            postToSubscription(subscription, obj, Looper.getMainLooper() == Looper.myLooper());
        }
    }

    public static void clearCaches() {
        SubscriberMethodFinder.clearCaches();
        eventTypesCache.clear();
    }

    public static EventBus getDefault() {
        if (defaultInstance == null) {
            synchronized (EventBus.class) {
                if (defaultInstance == null) {
                    defaultInstance = new EventBus();
                }
            }
        }
        return defaultInstance;
    }

    private void handleSubscriberException(Subscription subscription, Object obj, Throwable th) {
        if (!(obj instanceof SubscriberExceptionEvent)) {
            if (this.throwSubscriberException) {
                throw new EventBusException("Invoking subscriber failed", th);
            }
            if (this.logSubscriberExceptions) {
                String str = TAG;
                StringBuilder sbZ = jo.z("Could not dispatch event: ");
                sbZ.append(obj.getClass());
                sbZ.append(" to subscribing class ");
                sbZ.append(subscription.subscriber.getClass());
                Log.e(str, sbZ.toString(), th);
            }
            if (this.sendSubscriberExceptionEvent) {
                post(new SubscriberExceptionEvent(this, th, obj, subscription.subscriber));
                return;
            }
            return;
        }
        if (this.logSubscriberExceptions) {
            String str2 = TAG;
            StringBuilder sbZ2 = jo.z("SubscriberExceptionEvent subscriber ");
            sbZ2.append(subscription.subscriber.getClass());
            sbZ2.append(" threw an exception");
            Log.e(str2, sbZ2.toString(), th);
            SubscriberExceptionEvent subscriberExceptionEvent = (SubscriberExceptionEvent) obj;
            String str3 = TAG;
            StringBuilder sbZ3 = jo.z("Initial event ");
            sbZ3.append(subscriberExceptionEvent.causingEvent);
            sbZ3.append(" caused exception in ");
            sbZ3.append(subscriberExceptionEvent.causingSubscriber);
            Log.e(str3, sbZ3.toString(), subscriberExceptionEvent.throwable);
        }
    }

    private static List<Class<?>> lookupAllEventTypes(Class<?> cls) {
        List<Class<?>> list;
        Map<Class<?>, List<Class<?>>> map = eventTypesCache;
        synchronized (map) {
            List<Class<?>> list2 = map.get(cls);
            list = list2;
            if (list2 == null) {
                ArrayList arrayList = new ArrayList();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    addInterfaces(arrayList, superclass.getInterfaces());
                }
                eventTypesCache.put(cls, arrayList);
                list = arrayList;
            }
        }
        return list;
    }

    private void postSingleEvent(Object obj, PostingThreadState postingThreadState) throws Error {
        boolean zPostSingleEventForEventType;
        Class<?> cls = obj.getClass();
        if (this.eventInheritance) {
            List<Class<?>> listLookupAllEventTypes = lookupAllEventTypes(cls);
            int size = listLookupAllEventTypes.size();
            zPostSingleEventForEventType = false;
            for (int i = 0; i < size; i++) {
                zPostSingleEventForEventType |= postSingleEventForEventType(obj, postingThreadState, listLookupAllEventTypes.get(i));
            }
        } else {
            zPostSingleEventForEventType = postSingleEventForEventType(obj, postingThreadState, cls);
        }
        if (zPostSingleEventForEventType) {
            return;
        }
        if (this.logNoSubscriberMessages) {
            Log.d(TAG, "No subscribers registered for event " + cls);
        }
        if (!this.sendNoSubscriberEvent || cls == NoSubscriberEvent.class || cls == SubscriberExceptionEvent.class) {
            return;
        }
        post(new NoSubscriberEvent(this, obj));
    }

    private boolean postSingleEventForEventType(Object obj, PostingThreadState postingThreadState, Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.subscriptionsByEventType.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<Subscription> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            Subscription next = it.next();
            postingThreadState.event = obj;
            postingThreadState.subscription = next;
            try {
                postToSubscription(next, obj, postingThreadState.isMainThread);
                if (postingThreadState.canceled) {
                    return true;
                }
            } finally {
                postingThreadState.event = null;
                postingThreadState.subscription = null;
                postingThreadState.canceled = false;
            }
        }
        return true;
    }

    private void postToSubscription(Subscription subscription, Object obj, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int iOrdinal = subscription.subscriberMethod.threadMode.ordinal();
        if (iOrdinal == 0) {
            invokeSubscriber(subscription, obj);
            return;
        }
        if (iOrdinal == 1) {
            if (z) {
                invokeSubscriber(subscription, obj);
                return;
            } else {
                this.mainThreadPoster.enqueue(subscription, obj);
                return;
            }
        }
        if (iOrdinal == 2) {
            if (z) {
                this.backgroundPoster.enqueue(subscription, obj);
                return;
            } else {
                invokeSubscriber(subscription, obj);
                return;
            }
        }
        if (iOrdinal == 3) {
            this.asyncPoster.enqueue(subscription, obj);
        } else {
            StringBuilder sbZ = jo.z("Unknown thread mode: ");
            sbZ.append(subscription.subscriberMethod.threadMode);
            throw new IllegalStateException(sbZ.toString());
        }
    }

    private void subscribe(Object obj, SubscriberMethod subscriberMethod) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = subscriberMethod.eventType;
        Subscription subscription = new Subscription(obj, subscriberMethod);
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.subscriptionsByEventType.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.subscriptionsByEventType.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(subscription)) {
            StringBuilder sbZ = jo.z("Subscriber ");
            sbZ.append(obj.getClass());
            sbZ.append(" already registered to event ");
            sbZ.append(cls);
            throw new EventBusException(sbZ.toString());
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || subscriberMethod.priority > copyOnWriteArrayList.get(i).subscriberMethod.priority) {
                copyOnWriteArrayList.add(i, subscription);
                break;
            }
        }
        List<Class<?>> arrayList = this.typesBySubscriber.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.typesBySubscriber.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (subscriberMethod.sticky) {
            if (!this.eventInheritance) {
                checkPostStickyEventToSubscription(subscription, this.stickyEvents.get(cls));
                return;
            }
            for (Map.Entry<Class<?>, Object> entry : this.stickyEvents.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    checkPostStickyEventToSubscription(subscription, entry.getValue());
                }
            }
        }
    }

    private void unsubscribeByEventType(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = this.subscriptionsByEventType.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i < size) {
                Subscription subscription = copyOnWriteArrayList.get(i);
                if (subscription.subscriber == obj) {
                    subscription.active = false;
                    copyOnWriteArrayList.remove(i);
                    i--;
                    size--;
                }
                i++;
            }
        }
    }

    public void cancelEventDelivery(Object obj) {
        PostingThreadState postingThreadState = this.currentPostingThreadState.get();
        if (!postingThreadState.isPosting) {
            throw new EventBusException("This method may only be called from inside event handling methods on the posting thread");
        }
        if (obj == null) {
            throw new EventBusException("Event may not be null");
        }
        if (postingThreadState.event != obj) {
            throw new EventBusException("Only the currently handled event may be aborted");
        }
        if (postingThreadState.subscription.subscriberMethod.threadMode != ThreadMode.POSTING) {
            throw new EventBusException(" event handlers may only abort the incoming event");
        }
        postingThreadState.canceled = true;
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    public <T> T getStickyEvent(Class<T> cls) {
        T tCast;
        synchronized (this.stickyEvents) {
            tCast = cls.cast(this.stickyEvents.get(cls));
        }
        return tCast;
    }

    public boolean hasSubscriberForEvent(Class<?> cls) {
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList;
        List<Class<?>> listLookupAllEventTypes = lookupAllEventTypes(cls);
        if (listLookupAllEventTypes != null) {
            int size = listLookupAllEventTypes.size();
            for (int i = 0; i < size; i++) {
                Class<?> cls2 = listLookupAllEventTypes.get(i);
                synchronized (this) {
                    copyOnWriteArrayList = this.subscriptionsByEventType.get(cls2);
                }
                if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void invokeSubscriber(PendingPost pendingPost) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = pendingPost.event;
        Subscription subscription = pendingPost.subscription;
        PendingPost.releasePendingPost(pendingPost);
        if (subscription.active) {
            invokeSubscriber(subscription, obj);
        }
    }

    public synchronized boolean isRegistered(Object obj) {
        return this.typesBySubscriber.containsKey(obj);
    }

    public void post(Object obj) {
        PostingThreadState postingThreadState = this.currentPostingThreadState.get();
        List<Object> list = postingThreadState.eventQueue;
        list.add(obj);
        if (postingThreadState.isPosting) {
            return;
        }
        postingThreadState.isMainThread = Looper.getMainLooper() == Looper.myLooper();
        postingThreadState.isPosting = true;
        if (postingThreadState.canceled) {
            throw new EventBusException("Internal error. Abort state was not reset");
        }
        while (!list.isEmpty()) {
            try {
                postSingleEvent(list.remove(0), postingThreadState);
            } finally {
                postingThreadState.isPosting = false;
                postingThreadState.isMainThread = false;
            }
        }
    }

    public void postSticky(Object obj) {
        synchronized (this.stickyEvents) {
            this.stickyEvents.put(obj.getClass(), obj);
        }
        post(obj);
    }

    public void register(Object obj) {
        List<SubscriberMethod> listFindSubscriberMethods = this.subscriberMethodFinder.findSubscriberMethods(obj.getClass());
        synchronized (this) {
            Iterator<SubscriberMethod> it = listFindSubscriberMethods.iterator();
            while (it.hasNext()) {
                subscribe(obj, it.next());
            }
        }
    }

    public void removeAllStickyEvents() {
        synchronized (this.stickyEvents) {
            this.stickyEvents.clear();
        }
    }

    public <T> T removeStickyEvent(Class<T> cls) {
        T tCast;
        synchronized (this.stickyEvents) {
            tCast = cls.cast(this.stickyEvents.remove(cls));
        }
        return tCast;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("EventBus[indexCount=");
        sbZ.append(this.indexCount);
        sbZ.append(", eventInheritance=");
        sbZ.append(this.eventInheritance);
        sbZ.append("]");
        return sbZ.toString();
    }

    public synchronized void unregister(Object obj) {
        List<Class<?>> list = this.typesBySubscriber.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                unsubscribeByEventType(obj, it.next());
            }
            this.typesBySubscriber.remove(obj);
        } else {
            Log.w(TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public EventBus(EventBusBuilder eventBusBuilder) {
        this.currentPostingThreadState = new ThreadLocal<PostingThreadState>() { // from class: org.greenrobot.eventbus.EventBus.1
            @Override // java.lang.ThreadLocal
            public PostingThreadState initialValue() {
                return new PostingThreadState();
            }
        };
        this.subscriptionsByEventType = new HashMap();
        this.typesBySubscriber = new HashMap();
        this.stickyEvents = new ConcurrentHashMap();
        this.mainThreadPoster = new HandlerPoster(this, Looper.getMainLooper(), 10);
        this.backgroundPoster = new BackgroundPoster(this);
        this.asyncPoster = new AsyncPoster(this);
        List<SubscriberInfoIndex> list = eventBusBuilder.subscriberInfoIndexes;
        this.indexCount = list != null ? list.size() : 0;
        this.subscriberMethodFinder = new SubscriberMethodFinder(eventBusBuilder.subscriberInfoIndexes, eventBusBuilder.strictMethodVerification, eventBusBuilder.ignoreGeneratedIndex);
        this.logSubscriberExceptions = eventBusBuilder.logSubscriberExceptions;
        this.logNoSubscriberMessages = eventBusBuilder.logNoSubscriberMessages;
        this.sendSubscriberExceptionEvent = eventBusBuilder.sendSubscriberExceptionEvent;
        this.sendNoSubscriberEvent = eventBusBuilder.sendNoSubscriberEvent;
        this.throwSubscriberException = eventBusBuilder.throwSubscriberException;
        this.eventInheritance = eventBusBuilder.eventInheritance;
        this.executorService = eventBusBuilder.executorService;
    }

    public boolean removeStickyEvent(Object obj) {
        synchronized (this.stickyEvents) {
            Class<?> cls = obj.getClass();
            if (!obj.equals(this.stickyEvents.get(cls))) {
                return false;
            }
            this.stickyEvents.remove(cls);
            return true;
        }
    }

    public void invokeSubscriber(Subscription subscription, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            subscription.subscriberMethod.method.invoke(subscription.subscriber, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            handleSubscriberException(subscription, obj, e2.getCause());
        }
    }
}
