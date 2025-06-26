.class public abstract Lvm6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lwm6;

.field public c:[Ltm6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ltm6;

    .line 2
    iput-object v0, p0, Lvm6;->c:[Ltm6;

    .line 3
    iput-object p1, p0, Lvm6;->a:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lvm6;->b:Lwm6;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lzm6;

    invoke-direct {v0, p1}, Lzm6;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lvm6;->b:Lwm6;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvm6;->b:Lwm6;

    .line 2
    iget-object v1, v0, Lwm6;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3
    iget-object v1, v0, Lwm6;->b:Lj4;

    invoke-virtual {v1}, Lj4;->c()V

    .line 4
    iget-object v1, v0, Lwm6;->c:Lj4;

    invoke-virtual {v1}, Lj4;->c()V

    .line 5
    iget-object v0, v0, Lwm6;->e:Lrm6;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lvm6;->b:Lwm6;

    .line 2
    iget-object v0, v0, Lwm6;->d:Lan6;

    .line 3
    iget-object v0, v0, Lan6;->a:Lrm6;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public d(Ljava/lang/Object;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;J)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lvm6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lvm6;->b:Lwm6;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Lzm6;

    .line 3
    iget-object v2, v0, Lzm6;->f:Landroid/os/Handler;

    new-instance v3, Lym6;

    invoke-direct {v3, v0, p1, v1}, Lym6;-><init>(Lzm6;Ljava/lang/Object;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lvm6;->c:[Ltm6;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-interface {v4, p1}, Ltm6;->a(Ljava/lang/Exception;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object p1, p0, Lvm6;->b:Lwm6;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lzm6;

    .line 7
    iget-object p3, p1, Lzm6;->f:Landroid/os/Handler;

    new-instance v0, Lxm6;

    invoke-direct {v0, p1, v4, p2}, Lxm6;-><init>(Lzm6;ILjava/lang/Long;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lvm6;->b:Lwm6;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lzm6;

    .line 9
    iget-object p3, p1, Lzm6;->f:Landroid/os/Handler;

    new-instance v0, Lxm6;

    invoke-direct {v0, p1, v2, p2}, Lxm6;-><init>(Lzm6;ILjava/lang/Long;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public e(Ljava/lang/Object;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvm6;->b:Lwm6;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 4
    iget-object v3, v0, Lwm6;->a:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, v0, Lwm6;->b:Lj4;

    const-string v4, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v3, v1, v2, v4}, Lj4;->i(JLjava/lang/Object;)V

    .line 6
    iget-object v0, v0, Lwm6;->c:Lj4;

    const-string v3, "DEFAULT_ERROR_EVENT"

    invoke-virtual {v0, v1, v2, v3}, Lj4;->i(JLjava/lang/Object;)V

    .line 7
    new-instance v0, Lum6;

    const/4 v6, 0x0

    const-string v5, ""

    const-string v7, ""

    move-object v3, v0

    move-object v4, p0

    move-object v8, p1

    move-wide v9, v1

    invoke-direct/range {v3 .. v10}, Lum6;-><init>(Lvm6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;J)V

    invoke-static {v0}, Lsm6;->a(Lsm6$b;)V

    return-wide v1
.end method
