.class public final Lpm2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn2<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:Lqn2;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    .line 3
    iput p1, p0, Lpm2;->b:I

    .line 4
    iput p2, p0, Lpm2;->c:I

    .line 5
    new-instance p1, Lqn2;

    invoke-direct {p1}, Lqn2;-><init>()V

    iput-object p1, p0, Lpm2;->d:Lqn2;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpm2;->c()V

    .line 2
    iget-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final b()Lcn2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn2<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpm2;->d:Lqn2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lqn2;->c:J

    .line 4
    iget v1, v0, Lqn2;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lqn2;->d:I

    .line 5
    invoke-virtual {p0}, Lpm2;->c()V

    .line 6
    iget-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn2;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lpm2;->d:Lqn2;

    .line 9
    iget v3, v1, Lqn2;->e:I

    add-int/2addr v3, v2

    iput v3, v1, Lqn2;->e:I

    .line 10
    iget-object v1, v1, Lqn2;->b:Lpn2;

    iput-boolean v2, v1, Lpn2;->e:Z

    :cond_1
    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn2;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcn2;->d:J

    sub-long/2addr v1, v3

    .line 4
    iget v0, p0, Lpm2;->c:I

    int-to-long v3, v0

    const/4 v0, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lpm2;->d:Lqn2;

    .line 6
    iget v2, v1, Lqn2;->f:I

    add-int/2addr v2, v0

    iput v2, v1, Lqn2;->f:I

    .line 7
    iget-object v1, v1, Lqn2;->b:Lpn2;

    iget v2, v1, Lpn2;->f:I

    add-int/2addr v2, v0

    iput v2, v1, Lpn2;->f:I

    .line 8
    iget-object v0, p0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
