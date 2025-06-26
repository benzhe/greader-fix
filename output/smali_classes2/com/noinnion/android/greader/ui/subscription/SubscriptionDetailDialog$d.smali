.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;
.super Lvm6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvm6<",
        "Ljava/lang/String;",
        "Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lvm6;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 3
    new-instance p1, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;

    invoke-direct {p1}, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;-><init>()V

    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandler;->parseFeed(Lcom/noinnion/android/greader/client/rss/syndication/feed/Feed;)Lcom/noinnion/android/greader/client/rss/syndication/handler/FeedHandlerResult;

    move-result-object p1

    return-object p1
.end method
