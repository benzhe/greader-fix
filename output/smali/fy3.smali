.class public Lfy3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lxy3;

.field public volatile b:Lsw3;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lex3;->a()Lex3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lfy3;->b:Lsw3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfy3;->b:Lsw3;

    invoke-virtual {v0}, Lsw3;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lfy3;->a:Lxy3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfy3;->a:Lxy3;

    invoke-interface {v0}, Lxy3;->o()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lxy3;)Lxy3;
    .locals 1

    iget-object v0, p0, Lfy3;->a:Lxy3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfy3;->a:Lxy3;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lfy3;->a:Lxy3;

    sget-object v0, Lsw3;->f:Lsw3;

    iput-object v0, p0, Lfy3;->b:Lsw3;
    :try_end_1
    .catch Lyx3; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lfy3;->a:Lxy3;

    sget-object p1, Lsw3;->f:Lsw3;

    iput-object p1, p0, Lfy3;->b:Lsw3;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lfy3;->a:Lxy3;

    return-object p1
.end method

.method public final c()Lsw3;
    .locals 1

    iget-object v0, p0, Lfy3;->b:Lsw3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfy3;->b:Lsw3;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfy3;->b:Lsw3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfy3;->b:Lsw3;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lfy3;->a:Lxy3;

    if-nez v0, :cond_2

    sget-object v0, Lsw3;->f:Lsw3;

    :goto_0
    iput-object v0, p0, Lfy3;->b:Lsw3;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lfy3;->a:Lxy3;

    invoke-interface {v0}, Lxy3;->l()Lsw3;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lfy3;->b:Lsw3;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

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

    :cond_0
    instance-of v0, p1, Lfy3;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lfy3;

    iget-object v0, p0, Lfy3;->a:Lxy3;

    iget-object v1, p1, Lfy3;->a:Lxy3;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lfy3;->c()Lsw3;

    move-result-object v0

    invoke-virtual {p1}, Lfy3;->c()Lsw3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsw3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lzy3;->b()Lxy3;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfy3;->b(Lxy3;)Lxy3;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lzy3;->b()Lxy3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfy3;->b(Lxy3;)Lxy3;

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
