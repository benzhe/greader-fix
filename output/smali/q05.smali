.class public final Lq05;
.super Lis4;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lny4;)V
    .locals 0

    iput-object p1, p0, Lq05;->e:Lh15;

    .line 1
    invoke-direct {p0, p2}, Lis4;-><init>(Lny4;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lq05;->e:Lh15;

    .line 1
    invoke-virtual {v0}, Lyv4;->d()V

    .line 2
    invoke-virtual {v0}, Lh15;->w()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Inactivity, disconnecting from the service"

    .line 5
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lh15;->n()V

    return-void
.end method
