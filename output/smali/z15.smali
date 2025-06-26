.class public final Lz15;
.super Lis4;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lj25;

.field public final synthetic f:La25;


# direct methods
.method public constructor <init>(La25;Lny4;Lj25;)V
    .locals 0

    iput-object p1, p0, Lz15;->f:La25;

    iput-object p3, p0, Lz15;->e:Lj25;

    .line 1
    invoke-direct {p0, p2}, Lis4;-><init>(Lny4;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lz15;->f:La25;

    .line 1
    invoke-virtual {v0}, La25;->i()V

    iget-object v0, p0, Lz15;->f:La25;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Starting upload from DelayedRunnable"

    .line 4
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lz15;->e:Lj25;

    .line 5
    invoke-virtual {v0}, Lj25;->h()V

    return-void
.end method
