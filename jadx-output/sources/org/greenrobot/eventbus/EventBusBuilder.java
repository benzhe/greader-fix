package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.meta.SubscriberInfoIndex;

/* loaded from: classes2.dex */
public class EventBusBuilder {
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = Executors.newCachedThreadPool();
    public boolean ignoreGeneratedIndex;
    public List<Class<?>> skipMethodVerificationForClasses;
    public boolean strictMethodVerification;
    public List<SubscriberInfoIndex> subscriberInfoIndexes;
    public boolean throwSubscriberException;
    public boolean logSubscriberExceptions = true;
    public boolean logNoSubscriberMessages = true;
    public boolean sendSubscriberExceptionEvent = true;
    public boolean sendNoSubscriberEvent = true;
    public boolean eventInheritance = true;
    public ExecutorService executorService = DEFAULT_EXECUTOR_SERVICE;

    public EventBusBuilder addIndex(SubscriberInfoIndex subscriberInfoIndex) {
        if (this.subscriberInfoIndexes == null) {
            this.subscriberInfoIndexes = new ArrayList();
        }
        this.subscriberInfoIndexes.add(subscriberInfoIndex);
        return this;
    }

    public EventBus build() {
        return new EventBus(this);
    }

    public EventBusBuilder eventInheritance(boolean z) {
        this.eventInheritance = z;
        return this;
    }

    public EventBusBuilder executorService(ExecutorService executorService) {
        this.executorService = executorService;
        return this;
    }

    public EventBusBuilder ignoreGeneratedIndex(boolean z) {
        this.ignoreGeneratedIndex = z;
        return this;
    }

    public EventBus installDefaultEventBus() {
        EventBus eventBus;
        synchronized (EventBus.class) {
            if (EventBus.defaultInstance != null) {
                throw new EventBusException("Default instance already exists. It may be only set once before it's used the first time to ensure consistent behavior.");
            }
            EventBus.defaultInstance = build();
            eventBus = EventBus.defaultInstance;
        }
        return eventBus;
    }

    public EventBusBuilder logNoSubscriberMessages(boolean z) {
        this.logNoSubscriberMessages = z;
        return this;
    }

    public EventBusBuilder logSubscriberExceptions(boolean z) {
        this.logSubscriberExceptions = z;
        return this;
    }

    public EventBusBuilder sendNoSubscriberEvent(boolean z) {
        this.sendNoSubscriberEvent = z;
        return this;
    }

    public EventBusBuilder sendSubscriberExceptionEvent(boolean z) {
        this.sendSubscriberExceptionEvent = z;
        return this;
    }

    public EventBusBuilder skipMethodVerificationFor(Class<?> cls) {
        if (this.skipMethodVerificationForClasses == null) {
            this.skipMethodVerificationForClasses = new ArrayList();
        }
        this.skipMethodVerificationForClasses.add(cls);
        return this;
    }

    public EventBusBuilder strictMethodVerification(boolean z) {
        this.strictMethodVerification = z;
        return this;
    }

    public EventBusBuilder throwSubscriberException(boolean z) {
        this.throwSubscriberException = z;
        return this;
    }
}
