.class public final Lq77$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "v"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ly57;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lx47;

.field public final synthetic d:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lq77$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$v;->d:Lq77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq77$v;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lq77$v;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lx47;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq77$v;->c:Lx47;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lq77$v;->c:Lx47;

    .line 5
    iget-object v1, p0, Lq77$v;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lq77$v;->d:Lq77;

    .line 8
    iget-object v0, v0, Lq77;->D:Lh67;

    .line 9
    invoke-virtual {v0, p1}, Lh67;->b(Lx47;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
