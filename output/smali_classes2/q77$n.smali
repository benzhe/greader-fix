.class public Lq77$n;
.super Lc47$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public a:Lm57$b;

.field public final synthetic b:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lq77$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$n;->b:Lq77;

    invoke-direct {p0}, Lc47$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc47$b;)Lc47$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$n;->b:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    invoke-virtual {v0}, Lb57;->d()V

    .line 2
    iget-object v0, p0, Lq77$n;->b:Lq77;

    .line 3
    iget-boolean v0, v0, Lq77;->I:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is terminated"

    .line 4
    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 5
    new-instance v0, Lq77$u;

    iget-object v1, p0, Lq77$n;->b:Lq77;

    invoke-direct {v0, v1, p1, p0}, Lq77$u;-><init>(Lq77;Lc47$b;Lq77$n;)V

    return-object v0
.end method

.method public b()Lz27;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$n;->b:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->N:Lz27;

    return-object v0
.end method

.method public c()Lb57;
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$n;->b:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    return-object v0
.end method

.method public d(Li37;Lc47$i;)V
    .locals 2

    const-string v0, "newState"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newPicker"

    .line 2
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lq77$n;->b:Lq77;

    const-string v1, "updateBalancingState()"

    invoke-static {v0, v1}, Lq77;->o(Lq77;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lq77$n;->b:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    new-instance v1, Lq77$n$a;

    invoke-direct {v1, p0, p2, p1}, Lq77$n$a;-><init>(Lq77$n;Lc47$i;Li37;)V

    .line 5
    iget-object p1, v0, Lb57;->f:Ljava/util/Queue;

    const-string p2, "runnable is null"

    invoke-static {v1, p2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method
