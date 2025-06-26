.class public final Lrc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Loc2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lzv2;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ll52;

.field public final d:Landroid/content/Context;

.field public final e:Lll2;

.field public final f:Li52;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzv2;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Ll52;Landroid/content/Context;Lll2;Li52;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrc2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lrc2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lrc2;->g:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lrc2;->c:Ll52;

    .line 6
    iput-object p5, p0, Lrc2;->d:Landroid/content/Context;

    .line 7
    iput-object p6, p0, Lrc2;->e:Lll2;

    .line 8
    iput-object p7, p0, Lrc2;->f:Li52;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Loc2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->W0:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lqc2;

    invoke-direct {v0, p0}, Lqc2;-><init>(Lrc2;)V

    iget-object v1, p0, Lrc2;->a:Lzv2;

    invoke-static {v0, v1}, Lvt2;->c(Ldv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method
