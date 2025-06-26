.class public Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->addEvent(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$1;->this$0:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor$1;->this$0:Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;

    invoke-static {v0}, Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;->access$000(Lcom/noinnion/android/greader/client/rss/syndication/feed/EventDistributor;)V

    return-void
.end method
