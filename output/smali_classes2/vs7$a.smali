.class public final Lvs7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvs7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lvs7;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-class v0, Lvs7;

    invoke-static {}, Lvs7;->access$getHead$cp()Lvs7;

    move-result-object v1

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lvs7;->access$getNext$p(Lvs7;)Lvs7;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    invoke-static {}, Lvs7;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4
    invoke-static {}, Lvs7;->access$getHead$cp()Lvs7;

    move-result-object v0

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lvs7;->access$getNext$p(Lvs7;)Lvs7;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {}, Lvs7;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 5
    invoke-static {}, Lvs7;->access$getHead$cp()Lvs7;

    move-result-object v2

    :cond_0
    return-object v2

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lvs7;->access$remainingNanos(Lvs7;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-wide/32 v5, 0xf4240

    .line 7
    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 8
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 9
    :cond_2
    invoke-static {}, Lvs7;->access$getHead$cp()Lvs7;

    move-result-object v0

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Lvs7;->access$getNext$p(Lvs7;)Lvs7;

    move-result-object v3

    invoke-static {v0, v3}, Lvs7;->access$setNext$p(Lvs7;Lvs7;)V

    .line 10
    invoke-static {v1, v2}, Lvs7;->access$setNext$p(Lvs7;Lvs7;)V

    return-object v1
.end method
