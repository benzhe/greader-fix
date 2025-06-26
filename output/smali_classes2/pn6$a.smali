.class public final Lpn6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz35;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpn6;->a(Le45;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz35<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpn6;


# direct methods
.method public constructor <init>(Lpn6;)V
    .locals 0

    iput-object p1, p0, Lpn6$a;->a:Lpn6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le45;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le45<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lpn6$a;->a:Lpn6;

    iget-object p1, p1, Lpn6;->a:Ljb6;

    .line 2
    iget-object v0, p1, Ljb6;->f:Ldc6;

    .line 3
    iget-object v1, v0, Ldc6;->g:Lgc6;

    .line 4
    iget-object v1, v1, Lgc6;->a:Landroid/content/SharedPreferences;

    sget-wide v2, Ldc6;->i:J

    const-string v4, "minimum_fetch_interval_in_seconds"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Ldc6;->e:Lxb6;

    .line 6
    invoke-virtual {v3}, Lxb6;->b()Le45;

    move-result-object v3

    iget-object v4, v0, Ldc6;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v5, Lzb6;

    invoke-direct {v5, v0, v1, v2}, Lzb6;-><init>(Ldc6;J)V

    .line 8
    invoke-virtual {v3, v4, v5}, Le45;->j(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object v0

    .line 9
    sget-object v1, Lgb6;->a:Lgb6;

    invoke-virtual {v0, v1}, Le45;->p(Ld45;)Le45;

    move-result-object v0

    .line 10
    iget-object v1, p1, Ljb6;->b:Ljava/util/concurrent/Executor;

    .line 11
    new-instance v2, Leb6;

    invoke-direct {v2, p1}, Leb6;-><init>(Ljb6;)V

    .line 12
    invoke-virtual {v0, v1, v2}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    return-void
.end method
