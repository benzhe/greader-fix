.class public final Lun2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lzv2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ljs2;->a:Lks2;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lks2;->a(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lzv2;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lzv2;

    goto :goto_1

    .line 5
    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcw2;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0}, Lcw2;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Ldw2;

    invoke-direct {v1, v0}, Ldw2;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_0
    move-object v0, v1

    :goto_1
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method
