.class public Liv5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Liv5;


# direct methods
.method public constructor <init>(Liv5;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Liv5$a;->b:Liv5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Liv5$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Liv5$a;->b:Liv5;

    .line 2
    iget-object v0, v0, Liv5;->e:Lex5;

    .line 3
    invoke-virtual {v0}, Lex5;->d()V

    .line 4
    iget-object v0, p0, Liv5$a;->b:Liv5;

    .line 5
    iget-wide v1, v0, Liv5;->h:J

    .line 6
    iget-wide v3, p0, Liv5$a;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    sget-object v1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "stream callback skipped by CloseGuardedRunner."

    invoke-static {v1, p1, v2, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
