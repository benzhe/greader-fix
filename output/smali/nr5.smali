.class public Lnr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lus5;


# instance fields
.field public a:Ltr5;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyq5;)Ljn5;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            ")",
            "Ljn5<",
            "Lbu5;",
            "Lyt5;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lyq5;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "DefaultQueryEngine"

    const-string v3, "Using full collection scan to execute query: %s"

    invoke-static {v1, v2, v3, v0}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lnr5;->a:Ltr5;

    sget-object v1, Lju5;->f:Lju5;

    invoke-virtual {v0, p1, v1}, Ltr5;->d(Lyq5;Lju5;)Ljn5;

    move-result-object p1

    return-object p1
.end method
