.class public Lnu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnu6;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnu6;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;

    check-cast p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    invoke-static {v0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;->d(Lcom/noinnion/android/greader/ui/subscription/SubscribePodcastFragment;Lcom/noinnion/android/reader/common/subscription/Feed;)V

    :cond_0
    return-void
.end method
