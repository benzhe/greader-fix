.class public final Lfj4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfj4$a;,
        Lfj4$b;
    }
.end annotation


# static fields
.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lsf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsf5<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lfj4$b;

.field public final d:Lkh6;

.field public final e:Le45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le45<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le45<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Loh4;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lfj4;

    .line 2
    invoke-static {v0}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 3
    new-instance v2, Lig5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v1, Lkh6;

    .line 5
    new-instance v2, Lig5;

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v1, Lfj4$b;

    .line 7
    new-instance v2, Lig5;

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v1, Lij4;->a:Lwf5;

    .line 9
    invoke-virtual {v0, v1}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 10
    invoke-virtual {v0}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    sput-object v0, Lfj4;->i:Lsf5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkh6;Lfj4$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfj4;->g:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfj4;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ldh6;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfj4;->b:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lfj4;->d:Lkh6;

    .line 7
    iput-object p3, p0, Lfj4;->c:Lfj4$b;

    .line 8
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object p1

    sget-object p3, Lej4;->e:Ljava/util/concurrent/Callable;

    .line 9
    invoke-virtual {p1, p3}, Lgh6;->b(Ljava/util/concurrent/Callable;)Le45;

    move-result-object p1

    iput-object p1, p0, Lfj4;->e:Le45;

    .line 10
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance p3, Lhj4;

    invoke-direct {p3, p2}, Lhj4;-><init>(Lkh6;)V

    .line 12
    invoke-virtual {p1, p3}, Lgh6;->b(Ljava/util/concurrent/Callable;)Le45;

    move-result-object p1

    iput-object p1, p0, Lfj4;->f:Le45;

    return-void
.end method


# virtual methods
.method public final a(Lfj4$a;Loh4;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lfj4;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lfj4;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v2, p0, Lfj4;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lfj4$a;->a()Lgp4$a;

    move-result-object p1

    .line 6
    sget-object v0, Lgh6;->b:Ljava/lang/Object;

    new-instance v0, Lgj4;

    invoke-direct {v0, p0, p1, p2}, Lgj4;-><init>(Lfj4;Lgp4$a;Loh4;)V

    .line 7
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lgh6;->a:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
