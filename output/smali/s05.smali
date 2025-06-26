.class public final Ls05;
.super Lis4;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lh15;


# direct methods
.method public constructor <init>(Lh15;Lny4;)V
    .locals 0

    iput-object p1, p0, Ls05;->e:Lh15;

    .line 1
    invoke-direct {p0, p2}, Lis4;-><init>(Lny4;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ls05;->e:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v1, "Tasks have been queued for a long time"

    .line 3
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method
