.class public Lcom/noinnion/android/greader/service/FeedService$b;
.super Lnp6$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/FeedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/noinnion/android/greader/service/FeedService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/FeedService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    invoke-direct {p0}, Lnp6$a;-><init>()V

    return-void
.end method


# virtual methods
.method public T0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/FeedService;->h()I

    move-result v0

    return v0
.end method

.method public c5()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    .line 2
    iget-boolean v1, v0, Lcom/noinnion/android/greader/service/FeedService;->m:Z

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget v0, v0, Lcom/noinnion/android/greader/service/FeedService;->l:I

    return v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/noinnion/android/greader/service/FeedService;->m:Z

    .line 3
    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/FeedService;->j()V

    .line 4
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public f6()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/FeedService;->h:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/FeedService;->h:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public p0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    .line 2
    iget v0, v0, Lcom/noinnion/android/greader/service/FeedService;->j:I

    return v0
.end method

.method public y1()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/FeedService$b;->f:Lcom/noinnion/android/greader/service/FeedService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/FeedService;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method
