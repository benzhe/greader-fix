.class public final synthetic Lv72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ll72;

.field public final f:[Lio1;


# direct methods
.method public constructor <init>(Ll72;[Lio1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv72;->e:Ll72;

    iput-object p2, p0, Lv72;->f:[Lio1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lv72;->e:Ll72;

    iget-object v1, p0, Lv72;->f:[Lio1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 3
    iget-object v0, v0, Ll72;->j:Lyl2;

    aget-object v1, v1, v2

    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v1

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, v0, Lyl2;->a:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
