.class public Loq5;
.super Leq5;
.source "SourceFile"


# instance fields
.field public final d:Lbu5;


# direct methods
.method public constructor <init>(Leu5;Lfq5$a;Lbd6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leq5;-><init>(Leu5;Lfq5$a;Lbd6;)V

    .line 2
    invoke-static {p3}, Llu5;->k(Lbd6;)Z

    move-result p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "KeyFieldFilter expects a ReferenceValue"

    invoke-static {p1, p3, p2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Leq5;->b:Lbd6;

    .line 4
    invoke-virtual {p1}, Lbd6;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbu5;->k(Ljava/lang/String;)Lbu5;

    move-result-object p1

    iput-object p1, p0, Loq5;->d:Lbu5;

    return-void
.end method


# virtual methods
.method public b(Lyt5;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lfu5;->a:Lbu5;

    .line 2
    iget-object v0, p0, Loq5;->d:Lbu5;

    invoke-virtual {p1, v0}, Lbu5;->i(Lbu5;)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Leq5;->d(I)Z

    move-result p1

    return p1
.end method
