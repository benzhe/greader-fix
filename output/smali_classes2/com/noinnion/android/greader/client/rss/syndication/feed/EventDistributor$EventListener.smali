.class public abstract Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract update(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;Ljava/lang/Integer;)V
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$EventListener;->update(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
