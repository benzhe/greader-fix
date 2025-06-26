.class public final Lb05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:La05;

.field public final synthetic g:La05;

.field public final synthetic h:J

.field public final synthetic i:Lh05;


# direct methods
.method public constructor <init>(Lh05;Landroid/os/Bundle;La05;La05;J)V
    .locals 0

    iput-object p1, p0, Lb05;->i:Lh05;

    iput-object p2, p0, Lb05;->e:Landroid/os/Bundle;

    iput-object p3, p0, Lb05;->f:La05;

    iput-object p4, p0, Lb05;->g:La05;

    iput-wide p5, p0, Lb05;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lb05;->i:Lh05;

    iget-object v4, p0, Lb05;->e:Landroid/os/Bundle;

    iget-object v7, p0, Lb05;->f:La05;

    iget-object v8, p0, Lb05;->g:La05;

    iget-wide v9, p0, Lb05;->h:J

    const-string v1, "screen_name"

    .line 1
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "screen_class"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v0, Lly4;->a:Lrx4;

    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, "screen_view"

    invoke-virtual/range {v1 .. v6}, Lp25;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v6

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, v8

    move-wide v3, v9

    invoke-virtual/range {v0 .. v6}, Lh05;->k(La05;La05;JZLandroid/os/Bundle;)V

    return-void
.end method
