.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$EventListener;
    }
.end annotation


# static fields
.field public static final DOWNLOADLOG_UPDATE:I = 0x8

.field public static final DOWNLOAD_HANDLED:I = 0x40

.field public static final DOWNLOAD_QUEUED:I = 0x20

.field public static final FEED_LIST_UPDATE:I = 0x1

.field public static final PLAYBACK_HISTORY_UPDATE:I = 0x10

.field public static final QUEUE_UPDATE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EventDistributor"

.field public static final UNREAD_ITEMS_UPDATE:I = 0x2

.field private static instance:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;


# instance fields
.field private events:Ljava/util/AbstractQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->events:Ljava/util/AbstractQueue;

    return-void
.end method

.method public static synthetic access$000(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->processEventQueue()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;
    .locals 2

    const-class v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->instance:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    invoke-direct {v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;-><init>()V

    sput-object v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->instance:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    .line 3
    :cond_0
    sget-object v1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->instance:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private processEventQueue()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->events:Ljava/util/AbstractQueue;

    invoke-virtual {v1}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->events:Ljava/util/AbstractQueue;

    .line 5
    invoke-virtual {v1}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->events:Ljava/util/AbstractQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$1;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$1;-><init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 2
    instance-of p1, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$EventListener;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Observer must be instance of EventListener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$EventListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public sendDownloadHandledBroadcast()V
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public sendDownloadLogUpdateBroadcast()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public sendDownloadQueuedBroadcast()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public sendFeedUpdateBroadcast()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public sendPlaybackHistoryUpdateBroadcast()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public sendQueueUpdateBroadcast()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public sendUnreadItemsUpdateBroadcast()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public unregister(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$EventListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method
