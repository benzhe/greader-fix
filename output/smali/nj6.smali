.class public Lnj6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lak6;

.field public volatile b:Lqi6;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lyi6;->a()Lyi6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lak6;)Lak6;
    .locals 1

    .line 1
    iget-object v0, p0, Lnj6;->a:Lak6;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lnj6;->a:Lak6;

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 5
    :cond_1
    :try_start_1
    iput-object p1, p0, Lnj6;->a:Lak6;

    .line 6
    sget-object v0, Lqi6;->f:Lqi6;

    iput-object v0, p0, Lnj6;->b:Lqi6;
    :try_end_1
    .catch Lkj6; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    iput-object p1, p0, Lnj6;->a:Lak6;

    .line 8
    sget-object p1, Lqi6;->f:Lqi6;

    iput-object p1, p0, Lnj6;->b:Lqi6;

    .line 9
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_1
    iget-object p1, p0, Lnj6;->a:Lak6;

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b()Lqi6;
    .locals 1

    .line 1
    iget-object v0, p0, Lnj6;->b:Lqi6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnj6;->b:Lqi6;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lnj6;->b:Lqi6;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lnj6;->b:Lqi6;

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lnj6;->a:Lak6;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lqi6;->f:Lqi6;

    iput-object v0, p0, Lnj6;->b:Lqi6;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lnj6;->a:Lak6;

    invoke-interface {v0}, Lak6;->g()Lqi6;

    move-result-object v0

    iput-object v0, p0, Lnj6;->b:Lqi6;

    .line 9
    :goto_0
    iget-object v0, p0, Lnj6;->b:Lqi6;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lnj6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lnj6;

    .line 3
    iget-object v0, p0, Lnj6;->a:Lak6;

    .line 4
    iget-object v1, p1, Lnj6;->a:Lak6;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lnj6;->b()Lqi6;

    move-result-object v0

    invoke-virtual {p1}, Lnj6;->b()Lqi6;

    move-result-object p1

    invoke-virtual {v0, p1}, Lqi6;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Lbk6;->c()Lak6;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnj6;->a(Lak6;)Lak6;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_4
    invoke-interface {v1}, Lbk6;->c()Lak6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnj6;->a(Lak6;)Lak6;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
