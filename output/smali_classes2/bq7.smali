.class public abstract Lbq7;
.super Lxo7;
.source "SourceFile"

# interfaces
.implements Llp7;
.implements Lup7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lyp7;",
        ">",
        "Lxo7;",
        "Llp7;",
        "Lup7;"
    }
.end annotation


# instance fields
.field public final h:Lyp7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyp7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lxo7;-><init>()V

    iput-object p1, p0, Lbq7;->h:Lyp7;

    return-void
.end method


# virtual methods
.method public a()Leq7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbq7;->h:Lyp7;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcq7;

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcq7;->e()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lbq7;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, Lcq7;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Ldq7;->a:Lmp7;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_2
    instance-of v0, v1, Lup7;

    if-eqz v0, :cond_3

    .line 6
    check-cast v1, Lup7;

    invoke-interface {v1}, Lup7;->a()Leq7;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lsq7;->h()Z

    :cond_3
    :goto_0
    return-void
.end method
