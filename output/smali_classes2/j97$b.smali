.class public Lj97$b;
.super Lj97$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj97;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final f:Ldb7;

.field public final synthetic g:Lj97;


# direct methods
.method public constructor <init>(Lj97;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lj97$b;->g:Lj97;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj97$d;-><init>(Lj97;Lj97$a;)V

    .line 2
    invoke-static {}, Leb7;->a()Ldb7;

    sget-object p1, Lcb7;->b:Ldb7;

    iput-object p1, p0, Lj97$b;->f:Ldb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Leb7;->a:Lcb7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lxs7;

    invoke-direct {v0}, Lxs7;-><init>()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lj97$b;->g:Lj97;

    .line 5
    iget-object v1, v1, Lj97;->e:Ljava/lang/Object;

    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lj97$b;->g:Lj97;

    .line 8
    iget-object v2, v2, Lj97;->f:Lxs7;

    .line 9
    iget-wide v3, v2, Lxs7;->f:J

    .line 10
    invoke-virtual {v0, v2, v3, v4}, Lxs7;->write(Lxs7;J)V

    .line 11
    iget-object v2, p0, Lj97$b;->g:Lj97;

    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v2, Lj97;->j:Z

    .line 13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-object v1, v2, Lj97;->l:Ltt7;

    .line 15
    iget-wide v2, v0, Lxs7;->f:J

    .line 16
    invoke-interface {v1, v0, v2, v3}, Ltt7;->write(Lxs7;J)V

    .line 17
    iget-object v0, p0, Lj97$b;->g:Lj97;

    .line 18
    iget-object v0, v0, Lj97;->l:Ltt7;

    .line 19
    invoke-interface {v0}, Ltt7;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 21
    sget-object v1, Leb7;->a:Lcb7;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    throw v0
.end method
