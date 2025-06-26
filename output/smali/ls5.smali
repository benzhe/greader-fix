.class public final synthetic Lls5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljs5$d;


# direct methods
.method public constructor <init>(Ljs5$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lls5;->e:Ljs5$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lls5;->e:Ljs5$d;

    .line 1
    iget-object v1, v0, Ljs5$d;->b:Lfs5;

    iget-object v2, v0, Ljs5$d;->d:Ljs5;

    .line 2
    iget-object v3, v1, Lfs5;->a:Lts5;

    .line 3
    new-instance v4, Lvr5;

    invoke-direct {v4, v1, v2}, Lvr5;-><init>(Lfs5;Ljs5;)V

    const-string v1, "Collect garbage"

    .line 4
    invoke-virtual {v3, v1, v4}, Lts5;->g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljs5$b;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Ljs5$d;->c:Z

    .line 6
    invoke-virtual {v0}, Ljs5$d;->a()V

    return-void
.end method
