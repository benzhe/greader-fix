.class public final Lt15;
.super Lis4;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lu15;


# direct methods
.method public constructor <init>(Lu15;Lny4;)V
    .locals 0

    iput-object p1, p0, Lt15;->e:Lu15;

    .line 1
    invoke-direct {p0, p2}, Lis4;-><init>(Lny4;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lt15;->e:Lu15;

    iget-object v1, v0, Lu15;->d:Lx15;

    .line 1
    invoke-virtual {v1}, Lyv4;->d()V

    iget-object v1, v0, Lu15;->d:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 3
    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lu15;->a(ZZJ)Z

    iget-object v1, v0, Lu15;->d:Lx15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v1}, Lrx4;->c()Lxu4;

    move-result-object v1

    iget-object v0, v0, Lu15;->d:Lx15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 6
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lxu4;->h(J)V

    return-void
.end method
