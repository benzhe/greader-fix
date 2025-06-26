.class public Ltl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ltl;


# instance fields
.field public a:Lnl;

.field public b:Lol;

.field public c:Lrl;

.field public d:Lsl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lnl;

    invoke-direct {v0, p1, p2}, Lnl;-><init>(Landroid/content/Context;Lxm;)V

    iput-object v0, p0, Ltl;->a:Lnl;

    .line 4
    new-instance v0, Lol;

    invoke-direct {v0, p1, p2}, Lol;-><init>(Landroid/content/Context;Lxm;)V

    iput-object v0, p0, Ltl;->b:Lol;

    .line 5
    new-instance v0, Lrl;

    invoke-direct {v0, p1, p2}, Lrl;-><init>(Landroid/content/Context;Lxm;)V

    iput-object v0, p0, Ltl;->c:Lrl;

    .line 6
    new-instance v0, Lsl;

    invoke-direct {v0, p1, p2}, Lsl;-><init>(Landroid/content/Context;Lxm;)V

    iput-object v0, p0, Ltl;->d:Lsl;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lxm;)Ltl;
    .locals 2

    const-class v0, Ltl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ltl;->e:Ltl;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ltl;

    invoke-direct {v1, p0, p1}, Ltl;-><init>(Landroid/content/Context;Lxm;)V

    sput-object v1, Ltl;->e:Ltl;

    .line 3
    :cond_0
    sget-object p0, Ltl;->e:Ltl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
