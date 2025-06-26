.class public final Lf05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:La05;

.field public final synthetic f:J

.field public final synthetic g:Lh05;


# direct methods
.method public constructor <init>(Lh05;La05;J)V
    .locals 0

    iput-object p1, p0, Lf05;->g:Lh05;

    iput-object p2, p0, Lf05;->e:La05;

    iput-wide p3, p0, Lf05;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lf05;->g:Lh05;

    iget-object v1, p0, Lf05;->e:La05;

    iget-wide v2, p0, Lf05;->f:J

    const/4 v4, 0x0

    .line 1
    invoke-virtual {v0, v1, v4, v2, v3}, Lh05;->l(La05;ZJ)V

    .line 2
    iget-object v0, p0, Lf05;->g:Lh05;

    const/4 v1, 0x0

    iput-object v1, v0, Lh05;->e:La05;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lyv4;->d()V

    .line 5
    invoke-virtual {v0}, Lww4;->f()V

    new-instance v2, Lo05;

    .line 6
    invoke-direct {v2, v0, v1}, Lo05;-><init>(Lh15;La05;)V

    invoke-virtual {v0, v2}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method
