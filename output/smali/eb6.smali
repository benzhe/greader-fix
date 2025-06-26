.class public final synthetic Leb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# instance fields
.field public final a:Ljb6;


# direct methods
.method public constructor <init>(Ljb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb6;->a:Ljb6;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 5

    iget-object v0, p0, Leb6;->a:Ljb6;

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, Ljb6;->c:Lxb6;

    invoke-virtual {p1}, Lxb6;->b()Le45;

    move-result-object p1

    .line 2
    iget-object v1, v0, Ljb6;->d:Lxb6;

    invoke-virtual {v1}, Lxb6;->b()Le45;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Le45;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 3
    invoke-static {v2}, Lc50;->N0([Le45;)Le45;

    move-result-object v2

    iget-object v3, v0, Ljb6;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v4, Lfb6;

    invoke-direct {v4, v0, p1, v1}, Lfb6;-><init>(Ljb6;Le45;Le45;)V

    .line 5
    invoke-virtual {v2, v3, v4}, Le45;->j(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object p1

    return-object p1
.end method
